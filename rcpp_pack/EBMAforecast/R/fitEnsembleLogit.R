#' @useDynLib EBMAforecast
#' @importFrom Rcpp sourceCpp

#' @importFrom plyr alply aaply laply
#'
#' @rdname calibrateEnsemble
setGeneric(name="fitEnsemble",
           def=function(.forecastData,  tol = sqrt(.Machine$double.eps), maxIter=1e6, method="EM", exp=1, useModelParams=TRUE, predType="posteriorMedian", const=0,W=c(), whichW = 1, iterations=10000, burnin = 1000, thin = 50, ...)
           {standardGeneric("fitEnsemble")}
           )


setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataLogit"),
          definition=function(.forecastData,
            tol = sqrt(.Machine$double.eps),
            maxIter=1e6,
            method="EM",
            exp=1,
            useModelParams=TRUE,
            predType="posteriorMedian",
            const=0,
            W = c(),
            whichW = 1,
            iterations=10000,
            burnin = 1000,
            thin = 50)
          {
            if(iterations < (burnin+thin)){
              stop("You need to increase the number of iterations or decrease the burnin and/or thin rate.")
            }
            print(method)
            # Creating blank store matrix 
            store.W <- matrix()
            # Check if W is vector or matrix
            # Matrix
            if(is.matrix(W)){
              if(dim(W)[2] != dim(.forecastData@predCalibration)[2]){
                stop("The number of initial model weights must be of length of the number of predictive models included.")}
              for(i in 1:nrow(W)){
                if(sum(W[i,]) != 1){
                  stop("Each set of initial model weights must sum to 1.")}
              }
              }
            # Vector
            if(is.null(dim(W))){
            #check wether W is of right length and sums to 1
          if(length(W) != dim(.forecastData@predCalibration)[2] & is.null(W)==FALSE){
                stop("Vector of initial model weights must be of length of the number of predictive models included.")}  
          if(sum(W) != 1 & is.null(W)==FALSE){
                stop("Vector of initial model weights must sum to 1.")}  
            }
            #old em
            # .em <- function(outcomeCalibration, prediction, W)
              # {
                
                # ## Step 1: Calculate the Z's
                # z.numerator <- aaply(prediction, 1, function(x){x*W})
                # z.numerator.zero <- aaply(1-prediction, 1, function(x){x*W})
                # z.numerator[outcomeCalibration==0,] <- z.numerator.zero[outcomeCalibration==0,]
                # z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                # Z <-aperm(array(aaply(z.numerator, 2, function(x){x/z.denom}), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))

                # ## Step 2: Calculat the W's
                # .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                # W <- .unnormalizedW
                # W <- W/sum(.unnormalizedW)
                # W[W<ZERO]<-0
                # names(W) <- modelNames
         
                # ## Step 3: Calculate the log-likelihood
                # LL <-sum(log(z.denom))
                

                # out <- list(LL=LL, W=W)
                # return(out)
              # }
              
            .predictCal <- function(x){
              .rawPred <- predict(x, type="response")
              .outPred <- rep(NA, nObsCal)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }

            .makeAdj <- function(x){
              .adjPred <- qlogis(x)
              .negative <- .adjPred<0
              .pos <- .adjPred>1
              .adjPred <- ((1+abs(.adjPred))^(1/exp))-1
              .miss <- is.na(.adjPred)
              .negative[.miss] <- FALSE
              .adjPred[.negative] <- .adjPred[.negative]*(-1)
              #.adjPred[.pos] <- NA
              .adjPred[.miss] <- NA
              .adjPred
            }
            
            .modelFitter <- function(preds){
              .adjPred <- .makeAdj(preds)
              .thisModel <- glm(outcomeCalibration~.adjPred, family=binomial(link = "logit"))
              if (!.thisModel$converged){stop("One or more of the component logistic regressions failed to converge.  This may indicate perfect separtion or some other problem.  Try the useModelParams=FALSE option.")}
              .thisModel
              return(list(.thisModel, cook=cooks.distance(.thisModel)))
            }

            .predictTest <- function(x, i){
              .models[[i]]
              temp <- matrix(x,ncol=1)
              .rawPred <- predict(.models[[i]], newdata=data.frame(.adjPred=x), type="response")
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }


            ##Extract data
            predCalibration <- slot(.forecastData, "predCalibration")
            outcomeCalibration <- slot(.forecastData, "outcomeCalibration")
            predTest <- slot(.forecastData, "predTest")
            outcomeTest <- slot(.forecastData, "outcomeTest")
            .testPeriod <- length(predTest)>0            
            modelNames <- slot(.forecastData, "modelNames")
            
             ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3]
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4
            dimnames(predCalibration)<-list(c(1:nObsCal), modelNames, c(1:nDraws))
            dimnames(predCalibration)
            
            ## Fit Models
            if(useModelParams){
              .models <- alply(predCalibration, 2:3, .fun=.modelFitter)
              for(i in 1:nMod){
                if(any(unname(.models[[i]][[2]]) > 0.5)){
                cat("Problematic Cook's Distances (> 0.5) \n", "Model", names(.models[i]), ":",
                    which(unname(.models[[i]][[2]]) > 0.5), "\n")
                warning("Problematic Cook's Distances (> 0.5), see above output (under 'this.ensemble').")
                }
                .models[[i]] <- .models[[i]][[1]]
              }
            }
            
            ## Extract needed info
            if(nDraws==1 & useModelParams==TRUE){
              predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              dim(predCalibrationAdj)
              array(laply(.models, coefficients), dim=c(nMod, 2, nDraws))
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
            
            # This is calibration based on all sets of starting weights
            # Calibrating for as many times as are different weights if is a matrix of weights input,
            # checking to see if the weights significantly differ
            if(is.matrix(W)){
              W2 <- W[whichW,]
              # Matrix to store all posterior weights in
              store.W <- matrix(data=NA, nrow=dim(W)[1], ncol=dim(W)[2])
              colnames(store.W) <- modelNames
              for(i in 1:dim(W)[1]){
                  vectorW <- W[i,]
                  out  = emLogit(outcomeCalibration, matrix(predCalibrationAdj[,,1],ncol=nMod),vectorW,tol,maxIter, const)
                  if (out$Iterations==maxIter){print("WARNING: Maximum iterations reached for one of your set of weights")}
                  vectorW <- out$W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(vectorW) <- modelNames
                  LL = out$LL
                  iter = out$Iterations
                  store.W[i,] <- vectorW
                  }
              # Calculating mean absolute difference of posterior weights
              store.MAD <- matrix(data=NA, nrow=1, ncol=dim(store.W)[2])
              colnames(store.MAD) <- modelNames
              for(i in 1:dim(store.W)[2]){
                dif <- abs(store.W[1, i] - store.W[2, i])
                out <- (mean(dif, na.rm = TRUE))
                store.MAD[, i] <- out 
              }
              W <- W2
              # Error if any mean absolute difference of posterior weights > 0.0001
              if(any(store.MAD > 0.0001)){
                warning("The mean absolute difference between the sets of posterior weights is above 0.0001.
                        The posterior EBMA prediction is only based on the first set of weights.")
              }
            }
            
            
            
            ## unless user specified, set initial values for parameters
            if(is.null(W)){
            W <- rep(1/(nMod), nMod) ; names(W) <- modelNames
            }

            # ## Run EM - old code, now this is all done in rcpp
            # .done <- FALSE
            # .iter <- 0
            # .emOld<-0


            # while(.done == FALSE & .iter<maxIter){
              # #print(.iter)
              # .thisOut <- .em(outcomeCalibration=outcomeCalibration, prediction=predCalibrationAdj, W=W)
              # W <- .thisOut$W
              # LL <- .thisOut$LL
              # .done <- abs(.emOld-LL)/(1+abs(LL))<tol
              # .emOld <- LL
              # .iter <- .iter+1
            # }
            # if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
            # W <- W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames
            
            # Runs if user specifies EM algorithm
            if(method=="EM"){
              if(is.null(dim(W))){
                out  = emLogit(outcomeCalibration, matrix(predCalibrationAdj[,,1],ncol=nMod),W,tol,maxIter, const)
                if (out$Iterations==maxIter){print("WARNING: Maximum iterations reached")}
                W <- out$W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames
                LL = out$LL
                iter = out$Iterations
              }
            }
            
            # Runs if user specifies Bayesian algorithm
            if(method=="Bayesian"){
              LL <- numeric(); iter <- numeric()
              x1 = GibbsLogit(outcomeCalibration, matrix(predCalibrationAdj[,,1],ncol=nMod), W, iterations, burnin, thin)
              
              W_out <- x1[["W_out"]]
              # print(W_out[1,])
              .flatPreds <- aaply(predCalibrationAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)})
              many.predictions <- matrix(data=NA, nrow=dim(predCalibrationAdj)[1], ncol=dim(W_out)[1])
              for(i in 1:dim(W_out)[1]){
                bmaPred <- array(aaply(.flatPreds, 1, function(x) {sum(x* W_out[i,], na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
                bmaPred <-  bmaPred/array(t(W_out[i,]%*%t(1*!is.na(.flatPreds))), dim=c(nObsCal, 1, nDraws))
                bmaPred[,,-1] <- NA
                many.predictions[,i] <- bmaPred[,1,]
              }
              bmaPred[,1,] <- apply(many.predictions, 1, FUN=median)
              # print(bmaPred)
              cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)
            }
            
            
            # Runs if user specifies EM algorithm
            if(method=="EM"){
            .flatPreds <- aaply(predCalibrationAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)})
            bmaPred <- array(aaply(.flatPreds, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsCal, 1,nDraws))
            bmaPred <-  bmaPred/array(t(W%*%t(1*!is.na(.flatPreds))), dim=c(nObsCal, 1, nDraws))
            bmaPred[,,-1] <- NA
            cal <- abind(bmaPred, .forecastData@predCalibration, along=2); colnames(cal) <- c("EBMA", modelNames)
            }
            
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
              
              # Runs if user specifies Bayesian algorithm
              if(method=="Bayesian"){
                .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
                many.predictions2 <- matrix(data=NA, nrow=dim(predTestAdj)[1], ncol=dim(W_out)[1])
                for(i in 1:dim(W_out)[1]){
                  bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W_out[i,], na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
                  bmaPredTest <-  bmaPredTest/array(t(W_out[i,]%*%t(1*!is.na(.flatPredsTest))), dim=c(nObsTest, 1, nDraws))
                  bmaPredTest[,,-1] <- NA
                  many.predictions2[,i] <- bmaPredTest[,1,]
                }
                bmaPredTest[,1,] <- apply(many.predictions2, 1, FUN=median)
                test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
              }
              
              # Runs if user specifies EM algorithm
              if(method=="EM"){
                W_out <- matrix()
                .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
                bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
                bmaPredTest <-  bmaPredTest/array(t(W%*%t(1*!is.na(.flatPredsTest))), dim=c(nObsTest, 1, nDraws))
                bmaPredTest[,,-1] <- NA
                test <- abind(bmaPredTest, .forecastData@predTest, along=2);  colnames(test) <- c("EBMA", modelNames)
              }
              
              
            }
            if(!.testPeriod){{test <- .forecastData@predTest}}
            if(useModelParams==FALSE){.models = list()}

            
            
            
            new("FDatFitLogit",
                predCalibration=cal,
                outcomeCalibration=outcomeCalibration,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                useModelParams = useModelParams,
                modelParams=modelParams,
                logLik=LL,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                method=method,
                iter = iter,
                model = "logit",
                modelResults = .models,
                call=match.call(),
                posteriorWeights = store.W,
                posteriorBayesian = W_out
                )
          }
          )


