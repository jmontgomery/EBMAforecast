

#' @export
setMethod(f="EBMApredict",
          signature(EBMAmodel="FDatFitNormal"),
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
            nObsTest = dim(predictions)[1]
            nMod = length(W)
            .models = EBMAmodel@modelResults
            predType = EBMAmodel@predType
            useModelParams = TRUE
            if(sum(EBMAmodel@modelParams[1,,])==0 & sum(EBMAmodel@modelParams[2,,])==nMods){
              useModelParams = FALSE
            }
            sigma2 = EBMAmodel@variance
            .sdVec <- rep(sqrt(sigma2), nMod) 
            

            .predictTest <- function(x, i){
              .rawPred <- predict(.models[[i]], newdata=data.frame(preds=x))
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }
     
            if(useModelParams==TRUE){ 
              predTestAdj <- array(NA, dim=c(nObsTest, nMod, nDraws))
                for (k in 1:nMod){
                 for (j in 1:nDraws){
                   predTestAdj[,k,j] <- .predictTest(predictions[,k,j], i=k)
                   }
                }
              } 
            if(useModelParams==FALSE){predTestAdj <- predictions}
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
              bmaPredTest[,,-1] <- NA
            }
             
            test <- abind(bmaPredTest, predictions, along=2);  colnames(test) <- c("EBMA", modelNames)
            if(is.null(Outcome)==TRUE){Outcome = rep(numeric(0),dim(test)[1])}
                                       


            new("FDatFitNormal",
                predTest=test,
                outcomeTest= Outcome,
                modelNames=modelNames,
                modelWeights=W,
                call=match.call()
                )
          }
          )

