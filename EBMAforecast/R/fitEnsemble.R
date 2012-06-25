

#' @export
setGeneric(name="fitEnsemble",
           def=function(.forecastData, exp=1, tol=.001,maxIter=10000, method="EM", ...)
           {standardGeneric("fitEnsemble")}
           )

#' @rdname calibrateEnsemble
#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataLogit"),
          definition=function(.forecastData, exp, tol, maxIter, method)
          {
            
            my.em <- function(y, PP.matrix, W, PP.W, z.numerator)
              {

                ## Step 1: Calculate the Z's
                z.numerator.one <- t(apply(PP.matrix, 1, function(x){x*W}))
                z.numerator.zero <- t(apply((1-PP.matrix), 1, function(x){x*W}))
                z.numerator[y==1,] <- z.numerator.one[y==1,]
                z.numerator[y==0,] <- z.numerator.zero[y==0,]
                Z <- apply(z.numerator, 2, function(x){x/PP.W})

                ## Step 2: Calculat the W's
                W <- colMeans(Z)

                ## Step 3: Calculate the log-likelihood
                PP.W.one <- PP.matrix%*%W
                PP.W.zero <- (1-PP.matrix)%*%W
                PP.W[y==1] <- PP.W.one[y==1]
                PP.W[y==0] <- PP.W.zero[y==0]
                LL <-sum(log(PP.W))
                
                ## Output: Log-liklihood, PP.W, and Model Weights
                out <- list(LL=LL, PP.W=PP.W, W=round(W, 5))
                return(out)
              }

            ## See whether test period is also being calculated
            testPeriod <- length(.forecastData@predTest)>0

            pp.raw <- .forecastData@predCalibration
            y <- .forecastData@outcomeCalibration
            if(testPeriod){
              pp.raw.test <- .forecastData@predTest
              }
            modelNames <- .forecastData@modelNames


            ## Calculate useful constants
            num.models <- ncol(pp.raw)
            num.obs <- nrow(pp.raw)
            if(testPeriod) num.obs.test <- nrow(pp.raw.test)

            ## Initiate a couple of useful matrices
            PP.matrix <- matrix(NA, nrow=num.obs, ncol=num.models)
            if(testPeriod){PP.test.matrix <- matrix(NA, nrow=num.obs.test, ncol=num.models)}
            log.lik <- rep(NA, num.models)
            model.params <- matrix(NA, nrow=2, ncol=num.models)
            colnames(model.params)=modelNames
            rownames(model.params) <- c("Constant", "Predictor")
  
  
            ## Fit all of the basic logit model
            for(k in 1:num.models){
              adj.pred<-qlogis(pp.raw[,k])
              negative <- adj.pred<0
              adj.pred <- ((1+abs(adj.pred))^(1/exp))-1
              adj.pred[negative] <- adj.pred[negative]*(-1)
              this.model <- glm(y~adj.pred, family="binomial")
              log.lik[k] <- this.model$deviance/(-2)
              model.params[,k] <- this.model$coefficients
              PP.matrix[,k] <- fitted(this.model)
              if(testPeriod){
                adj.pred <- qlogis(pp.raw.test[,k])
                negative <- adj.pred<0
                adj.pred <- ((1+abs(adj.pred))^(1/exp))-1
                adj.pred[negative] <- adj.pred[negative]*(-1)
                PP.test.matrix[,k] <- predict(this.model, newdata=as.data.frame(adj.pred), type="response")
                
              }
            }

            W <- rep(1/k, k) #Start values for vector of Probability Weights

            ## Initiate a couple more useful matrices
            PP.W <- rep(NA, num.obs)
            z.numerator <- matrix(NA, nrow=num.obs, ncol=num.models)
            
            ## Go through first iteration of EM
            PP.W.one <- PP.matrix%*%W
            PP.W.zero <- (1-PP.matrix)%*%W
            PP.W[y==1] <- PP.W.one[y==1]
            PP.W[y==0] <- PP.W.zero[y==0]

            this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
            W <- this.out$W
            PP.W <- this.out$PP.W
            em.old <- this.out$LL
            
            ## Now loop the EM until reach tolerance or maximum iterations
            done <- FALSE
            iter <- 1

            while(done == FALSE & iter<maxIter){
              this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
              W <- this.out$W
              PP.W <- this.out$PP.W
              done <- abs(em.old-this.out$LL)<tol
              em.old <- this.out$LL
              iter <- iter+1
            }
            if (iter==maxIter){print("WARNING: Maximum iterations reached")}
            final.pp <- PP.matrix%*%W

            
            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            cal <- cbind(final.pp, .forecastData@predCalibration)
            colnames(cal) <- c("EBMA", modelNames)

            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
            if(testPeriod){
                bma.pred <- as.vector(PP.test.matrix%*%W)
                test <- cbind(bma.pred, .forecastData@predTest)
                colnames(test) <- c("EBMA", modelNames)
            }
            else {test <- .forecastData@predTest}

            ##
            names(W) <- modelNames

            new("FDatFitLogit",
                predCalibration=cal,
                outcomeCalibration=y,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=t(model.params),
                logLik=em.old,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                method=method,
                call=match.call()
                )
          }
          )




#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, exp=1, tol=1.490116e-08, maxIter=10000, method)
          {
            ZERO<-1e-4 
            my.em <- function(y, rawPredictions, W, sigma2)
              {
                act.outcomes <- y
                raw.predictions <- array(rawPredictions, dim=dim(rawPredictions))

                
                ## Step 1: Calculate the Z's
                g<- (aaply(.data=1:n.models,.margins=1,
                           .fun=function(i,y, mu, sd){
                             dnorm(y,mean=mu[,i,], sd=sd)
                           },
                           y=act.outcomes,mu=raw.predictions, sd=sqrt(sigma2)))


                g <- array(g, dim=c(dim(raw.predictions)[c(2,1,3)]))
                g <- aperm(g, c(2,1,3))
                z.numerator<- aaply(.data=g, .margins=1, .fun=function(x){x*W})
                z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                z.denom <- z.denom/
                  aaply(g, 1, .fun=function(x) sum((!is.na(x)*1)*W))
                Z <-aaply(z.numerator, 2, function(x){x/z.denom})
                Z <- array(Z, dim=c(dim(raw.predictions)[c(2,1,3)]))
                Z <- aperm(Z, c(2,1,3))
                Z[Z < ZERO] <- 0
                Z[is.na(Z)] <- 0
                
                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- (W/rowSums(!colSums(g, na.rm=T)==0)) # the bottom here is the number of non-empty exchangeable runs for each model
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 
                # There is a lot of summing of the same things here.  Might be possible to speed by just calculating once per iteration.

                
                ## Step 4: Calculate the log-likelihood
                LL <-sum(log(z.denom))
                
                out <- list(LL=LL, W=W,sigma2=sigma2)
                return(out)
              }
            ## See whether test period is also being calculated
            testPeriod <- length(.forecastData@predTest)>0

            pp.raw <- .forecastData@predCalibration
            y <- .forecastData@outcomeCalibration
            if(testPeriod){
              pp.raw.test <- .forecastData@predTest
              }
            modelNames <- .forecastData@modelNames

            ## Calculate useful constants
            num.models <- n.models <- ncol(pp.raw)
            num.obs<-n.obs <- nrow(pp.raw)
            n.draws <- dim(pp.raw)[3]
            if(testPeriod) num.obs.test <- nrow(pp.raw.test)

            ## Initiate a couple of useful matrices
            PP.matrix <- PP.resid <- RSQ <- array(NA, dim=c(n.obs, n.models, n.draws))
            ## PP.resid<-matrix(NA, nrow=num.obs, ncol=num.models)
            ## RSQ<-matrix(NA, nrow=n.obs, ncol=n.models)
            if(testPeriod){
              PP.test.matrix <- PP.test.resid <- array(NA, dim=c(num.obs.test, n.models, n.draws))
            }
            log.lik <- rep(NA, num.models)
            model.params <- matrix(NA, nrow=2, ncol=num.models)
            colnames(model.params)=modelNames
            rownames(model.params) <- c("Constant", "Predictor")
  
  
            ## Fit all of the basic ols models but we are not doing this, instead constrain to a_k0=0, a_k1=1 as in PA paper 
            for(k in 1:n.models){
              adj.pred <- raw.pred<-pp.raw[,k,1]
              ### adjument done here for logit
              this.model <- lm(y~adj.pred)
              #log.lik[k] <- logLik(this.model)
              #this.model$coefficients<-c(0,1)
              model.params[,k] <- c(0,1) 
              PP.matrix[,k,1] <- pp.raw[,k,1]
              PP.resid[,k,1]<-(y-PP.matrix[,k,1]) #as in their code line 134
              RSQ[,k,1]<-(y-PP.matrix[,k,1])^2 
              if(testPeriod){
                adj.pred <- pp.raw.test[,k,1]
                ## adjustment done here for logit
                PP.test.matrix[,k,1] <- adj.pred #predict(this.model, newdata=as.data.fra590*me(adj.pred), type="response")
              }
            }
            
            W <- rep(1/k, k) 
            sigma2<-var(y) 

            done <- FALSE
            iter <- 0
            em.old<-0

            while(done == FALSE & iter<maxIter){
              this.out <- my.em(y=y, rawPredictions=PP.matrix, W=W, sigma2=sigma2)
              W <- this.out$W
              PP.W <- this.out$PP.W
              sigma2<-this.out$sigma2
              done <- abs(em.old-this.out$LL)/(1+abs(this.out$LL))<tol ## changed this to as it is in their code, line 179
              em.old <- this.out$LL
              iter <- iter+1
            }
            if (iter==maxIter){print("WARNING: Maximum iterations reached")}
            final.pp <- PP.matrix[,,1]%*%W

            
            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            print("here")
            final.pp <- array(final.pp, dim=c(n.obs, 1,n.draws))
            print(final.pp)
            print(.forecastData@predCalibration)
            cal <- abind(final.pp, .forecastData@predCalibration, along=2)
            print(cal)
            print(colnames(cal))
            colnames(cal) <- c("EBMA", modelNames)

            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
           if(testPeriod){
             print(PP.test.matrix)
#               bma.pred <- as.vector(PP.test.matrix%*%W)
            bma.pred <- array(PP.test.matrix[,,1]%*%W, dim=c(num.obs.test,1,n.draws))
             print(bma.pred)
               test <- abind(bma.pred, .forecastData@predTest, along=2)
               colnames(test) <- c("EBMA", modelNames)
           }
          else{test <- .forecastData@predTest}


            new("FDatFitNormal",
                predCalibration=cal,
                outcomeCalibration=y,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=t(model.params),
                logLik=em.old,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                method=method,
                call=match.call()
                )
          }
          )

