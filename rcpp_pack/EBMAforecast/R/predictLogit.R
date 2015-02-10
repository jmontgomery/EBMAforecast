
#' @rdname EBMApredict
#' @export
setGeneric(name="EBMApredict",
           def=function( EBMAmodel, 
                         predictions,
                         Outcome=c(),
                         ...)
           {standardGeneric("EBMApredict")}
           )


#' @export
setMethod(f="EBMApredict",
          signature(EBMAmodel="ForecastData"),
          definition=function(EBMAmodel, 
                              predictions,
                              Outcome=c())
          {
            nDraws = 1
            if(is.matrix(predictions)==TRUE){
              predictions = array(predictions,dim=c(dim(predictions),nDraws))
            }
            #extract variables from EBMAmodel
            modelParams = EBMAmodel@modelParams
            W = EBMAmodel@modelWeights
            modelNames = EBMAmodel@modelNames
            nMods = length(W)
            exp = EBMAmodel@exp
            useModelParams = TRUE
            nObsTest = dim(predictions)[1]
            nMod = length(W)
            .models = EBMAmodel@modelResults
            if(sum(EBMAmodel@modelParams[1,,])==0 & sum(EBMAmodel@modelParams[2,,])==nMods){
              useModelParams = FALSE
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
            
            .predictTest <- function(x, i){
              .models[[i]]
              temp <- matrix(x,ncol=1)
              .rawPred <- predict(.models[[i]], newdata=data.frame(.adjPred=x), type="response")
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }
            
            if(useModelParams==TRUE){
                .adjPred <- .makeAdj(predictions)
                predTestAdj <- array(NA, dim=c(nObsTest, nMod, nDraws))
                for (k in 1:nMod){
                  for (j in 1:nDraws){
                    predTestAdj[,k,j] <- .predictTest(.adjPred[,k,j], i=k)
                  }
                }
              } 
              if(useModelParams==FALSE & is.null(Outcome)==FALSE){
                .adjPred <- .makeAdj(predictions)
                .adjPred[Outcome==0,,1]<-(1-plogis(.adjPred[Outcome==0,,1]))
              	.adjPred[Outcome==1,,1]<-(plogis(.adjPred[Outcome==1,,1]))
                predTestAdj <- .adjPred
              }
              if(useModelParams==FALSE & is.null(Outcome)==TRUE){
              .adjPred <- .makeAdj(predictions)
              predTestAdj <- .adjPred
              }

              .flatPredsTest <- matrix(aaply(predTestAdj, c(1,2), function(x) {mean(x, na.rm=TRUE)}), ncol=nMod)
              bmaPredTest <-array(aaply(.flatPredsTest, 1, function(x) {sum(x* W, na.rm=TRUE)}), dim=c(nObsTest, 1,nDraws))
              bmaPredTest <-  bmaPredTest/array(t(W%*%t(1*!is.na(.flatPredsTest))), dim=c(nObsTest, 1, nDraws))
              bmaPredTest[,,-1] <- NA

              test <- abind(bmaPredTest, predictions, along=2);  colnames(test) <- c("EBMA", modelNames)
              if(is.null(Outcome)==TRUE){Outcome = rep(numeric(0),nObsTest)}
            new("FDatFitLogit",
                predTest=test,
                outcomeTest= Outcome,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=modelParams,
                call=match.call()
                )
          }
          )


