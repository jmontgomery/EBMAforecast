

#' @export
setGeneric(name="fitEnsemble",
           def=function(.forecastData,  exp=1, tol = sqrt(.Machine$double.eps), maxIter=1e6, method="EM",  useModelParams=TRUE, wisdom=numeric(), weight=numeric(), sigma2=1, predType="posteriorMedian", ...)
           {standardGeneric("fitEnsemble")}  
           )

#' @rdname calibrateEnsemble
#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataLogit"),
          definition=function(.forecastData,
            exp=1, #THIS WAS LOWER BEFORE, now first arg not 4th so like order in calibrateEnsemble
            tol = sqrt(.Machine$double.eps),
            maxIter=1e6,
            method="EM",
            useModelParams=TRUE,
	    wisdom= numeric(),  # added functionality
	    weight = numeric(), #added functionality
	    sigma2 = 1,  # added functionality
            predType="posteriorMedian")
          {
            
            .em <- function(outcomeCalibration, prediction, W)
              {
                
                ## Step 1: Calculate the Z's
                z.numerator <- aaply(prediction, 1, function(x){x*W})
                z.numerator.zero <- aaply(1-prediction, 1, function(x){x*W})
                z.numerator[outcomeCalibration==0,] <- z.numerator.zero[outcomeCalibration==0,]
                z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                Z <-aperm(array(aaply(z.numerator, 2, function(x){x/z.denom}), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
 		Z[Z < ZERO] <- 0  ## ON CRAN, but wasn't in Master - causing the different values in summary
                Z[is.na(Z)] <- 0  ## ON CRAN, but wasn't in Master - causing the different values in summary

                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                names(W) <- modelNames
         
                ## Step 3: Calculate the log-likelihood
                LL <-sum(log(z.denom))
                

                out <- list(LL=LL, W=W)
                return(out)
              } #end of .em bracket

            .predictCal <- function(x){
              .rawPred <- predict(x, type="response")
              .outPred <- rep(NA, nObsCal)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            } #end of .predictCal bracket

            .makeAdj <- function(x){
              .adjPred <- qlogis(x)
              .adjPred <- ((1+abs(.adjPred))^(1/exp))-1
              .negative <- .adjPred<0
              .pos <- .adjPred>1
              .miss <- is.na(.adjPred)
              .negative[.miss] <- FALSE
              .adjPred[.negative] <- .adjPred[.negative]*(-1)
              #.adjPred[.pos] <- NA
              .adjPred[.miss] <- NA
              .adjPred
            }  #end of .makeAdj bracket
            
            .modelFitter <- function(preds){
              .adjPred <- .makeAdj(preds)
              .thisModel <- glm(outcomeCalibration~.adjPred, family=binomial(link = "logit"))
              if (!.thisModel$converged){stop("One or more of the component logistic regressions failed to converge.  This may indicate perfect separtion or some other problem.  Try the useModelParams=FALSE option.")}
              return(.thisModel)
            }

            .predictTest <- function(x, i){
              .rawPred <- predict(.models[[i]], newdata=data.frame(.adjPred=x), type="response")
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }

            
            ##Extract data
            predCalibration <- getPredCalibration(.forecastData); outcomeCalibration <- getOutcomeCalibration(.forecastData)
            predTest <- getPredTest(.forecastData); outcomeTest <- getOutcomeTest(.forecastData)
            .testPeriod <- length(predTest)>0            
            modelNames <- getModelNames(.forecastData)
            
             ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3] #Here's tha variable for weight
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4
            
            ## Fit Models  ##CRAN had alply while master had aaply, changing removed error
            if(useModelParams==TRUE){.models <- alply(predCalibration, 2:3, .fun=.modelFitter) }

            ## Extract needed info
            if(nDraws==1 & useModelParams==TRUE){
              predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              modelParams <- aperm(array(laply(.models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))
            }
            if(nDraws>1 & useModelParams==TRUE){ # This code is in development for exchangeability
              predCalibrationAdj <- aperm(aaply(.models, 1:2, .predictCal), c(3,1,2))
              modelParams <- aperm(aaply(.models, 1:2, coefficients), c(3,1,2))
            }
            if(useModelParams==FALSE){
              .adjPred <- .makeAdj(predCalibration)
              .adjPred[outcomeCalibration==0,,1]<-(1-plogis(.adjPred[outcomeCalibration==0,,1]))
              .adjPred[outcomeCalibration==1,,1]<-(plogis(.adjPred[outcomeCalibration==1,,1]))
              predCalibrationAdj <- .adjPred
              modelParams <- array(c(0,1), dim=c(2,nMod,nDraws))
            }

            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)

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
	    }  #entering weight vals optional, so if none given weight 1 / number of models

            ## Run EM
            .done <- FALSE
            .iter <- 0
            .emOld<-0
            while(.done == FALSE & .iter<maxIter){
              .thisOut <- .em(outcomeCalibration=outcomeCalibration, prediction=predCalibrationAdj, W=W)
              W <- .thisOut$W
              LL <- .thisOut$LL
              .done <- abs(.emOld-LL)/(1+abs(LL))<tol
              .emOld <- LL
              .iter <- .iter+1
            }
            if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
            W <- W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames


            .flatPreds <- aaply(predCalibrationAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)})
            bmaPred <- array(aaply(.flatPreds, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
            bmaPred <-  bmaPred/array(t(W%*%t(1*!is.na(.flatPreds))), dim=c(nObsCal, 1, nDraws))
            bmaPred[,,-1] <- NA
            cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)

            
            if(.testPeriod){
              if(useModelParams==TRUE){
                .adjPred <- .makeAdj(predTest)
                predTestAdj <- array(NA, dim=c(nObsTest, nMod, nDraws))
                for (k in 1:nMod){
                  for (j in 1:nDraws){
                    predTestAdj[,k,j] <- .predictTest(.adjPred[,k,j], i=k)
                  }
                }
              } 
              if(useModelParams==FALSE){
                .adjPred <- .makeAdj(predTest)
                .adjPred[outcomeTest==0,,1]<-(1-plogis(.adjPred[outcomeTest==0,,1]))
              	.adjPred[outcomeTest==1,,1]<-(plogis(.adjPred[outcomeTest==1,,1]))
                predTestAdj <- .adjPred
              }
              .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
              bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
              bmaPredTest <-  bmaPredTest/array(t(W%*%t(1*!is.na(.flatPredsTest))), dim=c(nObsTest, 1, nDraws))
              bmaPredTest[,,-1] <- NA

              test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
            }
            if(!.testPeriod){{test <- .forecastData@predTest}}

            new("FDatFitLogit",
                predCalibration=cal,
                outcomeCalibration=outcomeCalibration,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=modelParams,
                logLik=LL,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                method=method,
		wisdom= wisdom, #Wise crowds...
	    	weight = weight, #added functionality (optional)
	    	sigma2 = sigma2, #Probably don't want, but trying to see if I'm missing something...
                call=match.call()
                )
          }
          )


