

#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, tol=1.490116e-08, maxIter=10000, .method="EM", .exp=numeric(), useModelParams = TRUE)
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
                Z[Z < ZERO] <- 0
                Z[is.na(Z)] <- 0

                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- (W/rowSums(!colSums(g, na.rm=T)==0)) # the bottom here is the number of non-empty exchangeable draws for each model
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                names(W) <- modelNames
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 

                
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
              thisModel <- lm(outcomeCalibration~preds, x=TRUE)
              thisModel
            }
            if(useModelParams==TRUE){
              models <- aaply(predCalibration, 2:3, .fun=modelFitter)
            }
            
            ## Apply constraints
            print("five")

            myPredictCal <- function(x){
              .rawPred <- predict(x)
              .outPred <- rep(NA, nObsCal)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              .outPred
            }
            
            ## Extract needed info
            if(nDraws>1 & useModelParams==TRUE){
              predCalibrationAdj <- aperm(aaply(models, 1:2, myPredictCal), c(3,1,2))
              modelParams <- aperm(aaply(models, 1:2, coefficients), c(3,1,2))
              calResiduals <- outcomeCalibration-predCalibrationAdj
              calResiduals2 <- calResiduals^2

#              calResiduals <- aperm(aaply(models, 1:2, residuals), c(3,1,2))
#              calResiduals2 <- calResiduals^2
      #        logLikelihood <- t(aaply(models, 1:2, function(x) logLik(x)[1]))
            }
            if(nDraws==1 & useModelParams==TRUE){
              predCalibrationAdj <- aperm(array(laply(models, myPredictCal), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              modelParams <- aperm(array(laply(models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))
              calResiduals <- outcomeCalibration-predCalibrationAdj
              calResiduals2 <- calResiduals^2

 #             calResiduals <- aperm(array(laply(models, residuals), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
#              calResiduals2 <- calResiduals^2
        #      logLikelihood <- array(laply(models, function(x) logLik(x)[1]), dim=c(nDraws, nMod))
            }
            if(useModelParams==FALSE){
              predCalibrationAdj <- predCalibration
              modelParams <- array(c(0,1), dim=c(2,nMod,nDraws))
              calResiduals <- outcomeCalibration-predCalibration
              calResiduals2 <- calResiduals^2
          #    print(predCalibrationAdj)
          #    print(calResiduals)
        #      logLikelihood <- t(aaply(models, 1:2, function(x) logLik(x)[1]))
            }



            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(calResiduals) <- dimnames(calResiduals2) <-dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)
       #     dimnames(logLikelihood) <- list(1:nDraws, modelNames)
            
                        print("seven")

            ## Set initial values for parameters
            W <- rep(1/(nMod), nMod) ; names(W) <- modelNames
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
              print(.iter)
              }
            if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
            W <- W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames



            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            #### ATTENTION: This is *not* correct when there is a predictive model that makes no prediction at all for any observation in the test period.
            .flatPreds <- aaply(predCalibrationAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)})
             bmaPred <- array(aaply(.flatPreds, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
            bmaPred[,,-1] <- NA
#            bmaPred
#            bmaPred <- array(aaply(predCalibrationAdj, c(1,3), function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
#            if(nDraws>1){
#              bmaPred <- array(c(aaply(bmaPred, 1, mean), rep(NA, nObsCal*(nDraws-1))),  dim=c(nObsCal, 1,nDraws))
#            }

            cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)
            calFlat <- cbind(bmaPred[,,1], .flatPreds); colnames(calFlat) <- c("EBMA", modelNames)
            
            print("Eighta")
            
            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
            
           if(testPeriod){
             if(useModelParams==TRUE){
             predTestAdj <- array(laply(1:nMod, function(x) {predict(models[[x]], newdata=data.frame(preds=predTest[x]))}), dim=c(nObsTest, nMod, nDraws))
             print("1")
           }
             if(useModelParams==FALSE){predTestAdj <- predTest}
             .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
             bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
          #     array(aaply(predTestAdj, c(1,3), function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
                        bmaPredTest[,,-1] <- NA
             print("2")
#             if(nDraws>1){bmaPredTest <- array(c(aaply(bmaPredTest, 1, mean), rep(NA, nObsTest*(nDraws-1))),  dim=c(nObsTest, 1,nDraws))}
             print("3")
             test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
             testFlat <- cbind(bmaPredTest[,,1], .flatPredsTest); colnames(testFlat) <- c("EBMA", modelNames)
             print("4")
           }
            if(!testPeriod){{test <- .forecastData@predTest}}
            print("nine")

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

