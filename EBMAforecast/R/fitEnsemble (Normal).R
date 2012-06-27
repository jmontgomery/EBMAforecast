

#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, exp=NULL, tol=1.490116e-08, maxIter=10000, modelParams=NULL, method)
          {


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



            ##Extract data
            predCalibration <- getPredCalibration(.forecastData); outcomeCalibration <- getOutcomeCalibration(.forecastData)
            predTest <- getPredTest(.forecastData); outcomeTest <- getOutcomeTest(.forecastData)
            testPeriod <- length(predTest)>0            
            modelNames <- getModelNames(.forecastData)

            ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3]
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4 
            
            ## Initiate storage
            predCalibrationAdj <-  array(NA, dim=c(nObsCal, nMod, nDraws))
            predTestAdj <-   array(NA, dim=c(nObsTest, nMod, nDraws))

            ## Fit Models
            modelFitter <- function(preds){
              thisModel <- lm(outcomeCalibration~preds)
              thisModel
            }
            models <- aaply(predCalibration, 2:3, .fun=modelFitter)

            ## Extract needed info
            if(nDraws>1){
              predCalibrationAdj <- aperm(aaply(models, 1:2, predict), c(3,1,2))
              modelParams <- aperm(aaply(models, 1:2, coefficients), c(3,1,2))
              calResiduals <- aperm(aaply(models, 1:2, residuals), c(3,1,2))
              calResiduals2 <- calResiduals^2
              logLikelihood <- t(aaply(models, 1:2, function(x) logLik(x)[1]))
            }
            if(nDraws==1){modelParams <- aperm(array(laply(models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))}
            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(calResiduals) <- dimnames(calResiduals2) <-dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)
            dimnames(logLikelihood) <- list(1:nDraws, modelNames)
            

#            for(k in 1:n.models){
#              PP.resid[,k,1]<-(y-PP.matrix[,k,1]) #as in their code line 134
#              RSQ[,k,1]<-(y-PP.matrix[,k,1])^2 
#              if(testPeriod){
#                adj.pred <- pp.raw.test[,k,1]
#                ## adjustment done here for logit
#                PP.test.matrix[,k,1] <- adj.pred #predict(this.model, newdata=as.data.fra590*me(adj.pred), type="response")
#              }
#            }
            
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

