#' @rdname calibrateEnsemble
#' @export
setMethod(f="fitEnsemble",
	    signature(.forecastData="ForecastDataNormal"),
            definition=function(.forecastData, 
            exp=numeric(), #moved up so in order as calibrate and logit...CRANs out of order and ok
	    tol = sqrt(.Machine$double.eps), 
            maxIter=1e6,
            method="EM", 
            useModelParams = TRUE, ##NOT IN MASTER, in CRAN (also tol above in CRAN)
            predType="posteriorMedian",
            wisdom= numeric(), #Wise crowds...
	    weight = numeric(), #added functionality (optional)
	    sigma2 = 1) #added functionality (optional)
          {
	    # .em method ##Do I need to change these values/variable names? Ws seem confusing##
            .em <- function(outcomeCalibration, prediction, RSQ, wisdom, W, sigma2) #Added wisdom (replaced const) and trying reorder to fix formal args diff order in method and generic
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
                Z <-aperm(array(aaply(z.numerator, 2, function(x){x/z.denom}), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
                Z[Z < ZERO] <- 0

		#Option for Wisdom of the Crowds
                .missZ <- aaply(Z, 1, .fun=function(x) sum(!is.na(x)*1))
                .adjConst <- wisdom*1/.missZ # c comes in here
                Z <- .adjConst + (1-wisdom)*Z # c comes in here
                

                Z[is.na(Z)] <- 0

                ## Step 2: Calculat the W's  # Within the em algorithm so don't tweak
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                names(W) <- modelNames
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 


                ## Step 4: Calculate the log-likelihood
                LL <-sum(log(z.denom))

                out <- list(LL=LL, W=W,sigma2=sigma2)
                return(out)
              } # End of .em bracket
          

            .predictCal <- function(x){
              .rawPred <- predict(x)
              .outPred <- rep(NA, nObsCal)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            } # End of .predictCal bracket

            
            .modelFitter <- function(preds){
              thisModel <- lm(outcomeCalibration~preds)  #lm since normal
              return(thisModel)
            } # End of .modelFitter bracket


            .predictTest <- function(x, i){
              .rawPred <- predict(.models[[i]], newdata=data.frame(preds=x))
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            } # End of .predictTest bracket
            
            
            ##Extract data
            predCalibration <- getPredCalibration(.forecastData); outcomeCalibration <- getOutcomeCalibration(.forecastData)
            predTest <- getPredTest(.forecastData); outcomeTest <- getOutcomeTest(.forecastData)
            .testPeriod <- length(predTest)>0            
            modelNames <- getModelNames(.forecastData)
            
            ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3]  #vars for weight (if not given)
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4
            
            ## Fit Models - this was aaply when error, but CRAN version alply 
            if(useModelParams==TRUE){.models <- alply(predCalibration, 2:3, .fun=.modelFitter)} # useModelParams not in MASTER


            ## Extract needed info
            if(nDraws==1 & useModelParams==TRUE){   
              predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              modelParams <- aperm(array(laply(.models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))
            }
            if(nDraws>1 & useModelParams==TRUE){ # This code is in development for exchangeability  
              predCalibrationAdj <- aperm(aaply(.models, 1:2, .predictCal), c(3,1,2))
              modelParams <- aperm(aaply(.models, 1:2, coefficients), c(3,1,2))
            }
            if(useModelParams==FALSE){  ##argument not in Master Version!
              predCalibrationAdj <- predCalibration
              modelParams <- array(c(0,1), dim=c(2,nMod,nDraws))
            }
            calResiduals <- outcomeCalibration-predCalibrationAdj
            calResiduals2 <- calResiduals^2  #Here's RSQ for EM
            
            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(calResiduals) <- dimnames(calResiduals2) <-dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)

            ## Set initial values for parameters
             if (is.numeric(weight) & length(weight) == 0){
            	W <- rep(1/(nMod), nMod) ; names(W) <- modelNames   #DEFAULT for no val
	    } 
	    else {
		if (length(weight) != nMod || sum(weight) != 1) {
		    print("ERROR: weight should have a value for each model and sum to 1.") }
		else {
		    W <- weight ; names(W) <- modelNames
		}
	    }  #entering weight vals optional, so if none given weight 1 / number of models given
            sigma2<-sigma2   #DEFAULT VAL IS 1 (which was only option before)

            ## Run EM
            .done <- FALSE
            .iter <- 0
            .emOld<-0
            while(.done == FALSE & .iter<maxIter){
              .thisOut <- .em(outcomeCalibration=outcomeCalibration, prediction=predCalibrationAdj, W=W, sigma2=sigma2, RSQ=calResiduals2, wisdom=wisdom) ##added in wisdom of crowds constant
              W <- .thisOut$W
              sigma2<-.thisOut$sigma2
              LL <- .thisOut$LL
              .done <- abs(.emOld-LL)/(1+abs(LL))<tol #testing whether the change is less than tol
              .emOld <- LL
              .iter <- .iter+1
            } # End of EM loop
            if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
            W <- W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames

            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            .flatPreds <- aaply(predCalibrationAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)})
            .sdVec <- rep(sqrt(sigma2), nMod) 

            if (predType=="posteriorMean"){
              bmaPred <- array(aaply(.flatPreds, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
              bmaPred <-  bmaPred/array(t(W%*%t(1*!is.na(.flatPreds))), dim=c(nObsCal, 1, nDraws))
              bmaPred[,,-1] <- NA
            }

            if (predType=="posteriorMedian"){
              .altQBMAnormal <- function(x){
                .x <- x[!is.na(x)]
                .W <- W[!is.na(x)]
                ..sdVec <- .sdVec[!is.na(x)]
                ensembleBMA:::quantBMAnormal(.5, .W, .x, ..sdVec)
              }
             bmaPred <- array(aaply(.flatPreds, 1, .altQBMAnormal),  dim=c(nObsCal, 1,nDraws))
             bmaPred[,,-1] <- NA
            }
            cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)


     
            if(.testPeriod){
              if(useModelParams==TRUE){ 
                predTestAdj <- array(NA, dim=c(nObsTest, nMod, nDraws))
                for (k in 1:nMod){
                 for (j in 1:nDraws){
                   predTestAdj[,k,j] <- .predictTest(predTest[,k,j], i=k)
                   }
                }
              } 
              if(useModelParams==FALSE){predTestAdj <- predTest}
              .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
              
              if (predType=="posteriorMean"){
                bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
                bmaPredTest <-  bmaPredTest/array(t(W%*%t(1*!is.na(.flatPredsTest))), dim=c(nObsTest, 1, nDraws))
                bmaPredTest[,,-1] <- NA
              }
             
              if (predType=="posteriorMedian"){
                .altQBMAnormal <- function(x){
                  .x <- x[!is.na(x)]
                  .W <- W[!is.na(x)]
                  ..sdVec <- .sdVec[!is.na(x)]
                  ensembleBMA:::quantBMAnormal(.5, .W, .x, ..sdVec)
                }
                bmaPredTest <- array(aaply(.flatPredsTest, 1, .altQBMAnormal),  dim=c(nObsTest, 1,nDraws))
                bmaPred[,,-1] <- NA
              }
             
              test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
            }
            if(!.testPeriod){{test <- .forecastData@predTest}}


            new("FDatFitNormal",
                predCalibration=cal,
                outcomeCalibration=outcomeCalibration,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=modelParams,
                variance=sigma2,
                logLik=LL,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                predType=predType,
                method=method,
		wisdom= wisdom, #Wise crowds...
	        weight = weight, #added functionality (optional)
	        sigma2 = sigma2, #Not sure these should be here...
                call=match.call()
                )
          }  #End of function bracket
          )  #End of setMethod

