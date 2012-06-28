

#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, tol=1.490116e-08, maxIter=10000, .method="EM", .exp=numeric())
          {


            my.em <- function(outcomeCalibration, prediction, RSQ, W, sigma2)
              {
                
                ## Step 1: Calculate the Z's
                g<- aperm(array(aaply(.data=1:nMod,.margins=1,
                           .fun=function(i,y, mu, sd){
                             dnorm(y,mean=mu[,i,], sd=sd)
                           },
                           y=outcomeCalibration,mu=prediction, sd=sqrt(sigma2))
                          , dim=c(nMod, nObsCal, nDraws)), c(2,1,3))

                z.numerator<- aaply(.data=g, .margins=1, .fun=function(x){x*W})
                z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                z.denom <- z.denom/
                  aaply(g, 1, .fun=function(x) sum((!is.na(x)*1)*W))
                Z <-aperm(array(aaply(z.numerator, 2, function(x){x/z.denom}), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
#                Z <- array(Z, dim=c(dim(predictions)[c(2,1,3)]))
 #               Z <- aperm(Z, c(2,1,3))
                Z[Z < ZERO] <- 0
                Z[is.na(Z)] <- 0
                
                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- (W/rowSums(!colSums(g, na.rm=T)==0)) # the bottom here is the number of non-empty exchangeable runs for each model
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                W <- array(W, dim=c(nDraws, nMod)) ; dimnames(W) <- list(1:nDraws, modelNames)
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 
                # There is a lot of summing of the same things here.  Might be possible to speed by just calculating once per iteration.

                
                ## Step 4: Calculate the log-likelihood
                LL <-sum(log(z.denom))
                
                out <- list(LL=LL, W=W,sigma2=sigma2)
                return(out)
              }

            print("one")

            ##Extract data
            predCalibration <- getPredCalibration(.forecastData); outcomeCalibration <- getOutcomeCalibration(.forecastData)
            predTest <- getPredTest(.forecastData); outcomeTest <- getOutcomeTest(.forecastData)
            testPeriod <- length(predTest)>0            
            modelNames <- getModelNames(.forecastData)

            print("two")
            
            
            ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3]
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4

                        print("three")
            
            ## Initiate storage
            predCalibrationAdj <-  array(NA, dim=c(nObsCal, nMod, nDraws))
            predTestAdj <-   array(NA, dim=c(nObsTest, nMod, nDraws))

                                    print("four")

            ## Fit Models
            modelFitter <- function(preds){
              thisModel <- lm(outcomeCalibration~preds)
              thisModel
            }
            models <- aaply(predCalibration, 2:3, .fun=modelFitter)

                        print("five")
            
            ## Extract needed info
            if(nDraws>1){
              predCalibrationAdj <- aperm(aaply(models, 1:2, predict), c(3,1,2))
              modelParams <- aperm(aaply(models, 1:2, coefficients), c(3,1,2))
              calResiduals <- aperm(aaply(models, 1:2, residuals), c(3,1,2))
              calResiduals2 <- calResiduals^2
              logLikelihood <- t(aaply(models, 1:2, function(x) logLik(x)[1]))
            }
            if(nDraws==1){
              predCalibrationAdj <- aperm(array(laply(models, predict), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              modelParams <- aperm(array(laply(models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))
              calResiduals <- aperm(array(laply(models, residuals), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              calResiduals2 <- calResiduals^2
              logLikelihood <- array(laply(models, function(x) logLik(x)[1]), dim=c(nDraws, nMod))
            }
                        print("six")
            
            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(calResiduals) <- dimnames(calResiduals2) <-dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)
            dimnames(logLikelihood) <- list(1:nDraws, modelNames)
            
                        print("seven")
#            for(k in 1:n.models){
#              PP.resid[,k,1]<-(y-PP.matrix[,k,1]) #as in their code line 134
#              RSQ[,k,1]<-(y-PP.matrix[,k,1])^2 
#              if(testPeriod){
#                adj.pred <- pp.raw.test[,k,1]
#                ## adjustment done here for logit
#                PP.test.matrix[,k,1] <- adj.pred #predict(this.model, newdata=as.data.fra590*me(adj.pred), type="response")
#              }
#            }

            ## Set initial values for parameters
            W <- array(1/(nMod*nDraws), dim=c(nDraws, nMod)) ; dimnames(W) <- list(1:nDraws, modelNames)
            sigma2<-var(outcomeCalibration) 

                        print("eight")
            
            .done <- FALSE
            .iter <- 0
            .emOld<-0
            while(.done == FALSE & .iter<maxIter){
              .thisOut <- my.em(outcomeCalibration=outcomeCalibration, prediction=predCalibrationAdj, W=W, sigma2=sigma2, RSQ=calResiduals2)
              W <- .thisOut$W
              sigma2<-.thisOut$sigma2
              LL <- .thisOut$LL
              .done <- abs(.emOld-LL)/(1+abs(LL))<tol
              .emOld <- LL
              .iter <- .iter+1
#              print(.iter)
              }
            if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
                        print("nine")

            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            bmaPred <- array(aaply(predCalibrationAdj, c(1,3), function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
            cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)

            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
           if(testPeriod){
             predTestAdj <- array(laply(1:nMod, function(x) {predict(models[[x]], newdata=data.frame(preds=predTest[x]))}), dim=c(nObsTest, nMod, nDraws))
             bmaPredTest <- array(aaply(predTestAdj, c(1,3), function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
             test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
           }
           else{test <- .forecastData@predTest}


            new("FDatFitNormal",
            #list(
                predCalibration=cal,
                outcomeCalibration=outcomeCalibration,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=modelParams,
                variance=sigma2,
                logLik=LL,
                exp=.exp,
                tol=tol,
                maxIter=maxIter,
                method=.method,
                call=match.call()
                )
          }
          )

