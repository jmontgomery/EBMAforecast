##
#' An S4 class that stores a fitted ebma logit model
#'
#' @export
setClass(Class="FDatFitLogit",
         contains="ForecastData",
         representation=representation(
           modelWeights="numeric",
           modelParams="matrix",
           logLik="numeric",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           method="character",
           call="call"
           ),
         prototype=prototype(
           modelWeights=numeric(),
           modelParams=matrix(NA, nrow=0, ncol=0),
           logLik=numeric(),
           exp=numeric(),
           tol=numeric(),
           maxIter=numeric(),
           method=character(),
           call=call(" ")
           ),
         validity=function(object){
           if(length(object@modelWeights)>0){
             if(sum(object@modelWeights)<=.99 || sum(object@modelWeights)>1.01){
             stop("Model weights should sum to approximately one.")
           }
           }
         }
         )


##
#' Plotting function for logistic ensemble models that have already been fit
#'
#' Description goes here
#'
#' @param x An object of class "FDatFitLogit"
#' @param y I don't know
#' @method plot FDatFitLogit
#' @export
setMethod(
          f="plot",
          signature="FDatFitLogit",
          definition=function(x, y=NULL,  ...){
            .period="calibration"
            numModels <- length(x@modelWeights)+1
            print("here")
            modelNames <- c("EBMA", x@modelNames)
            if(.period=="calibration"){
              .pred <- x@predCalibration; .actual <- x@outcomeCalibration
            }
            else{
              .pred <- x@predTest; .actual <- x@outcomeTest
            }
            print(class(.pred)); print(class(.actual))
            par(mgp=c(1, 0, 0), lend = 2, mar=c(1,0,1,0), mfrow=c(numModels, 1))
            for (i in 1:numModels){
              separationplot(pred=as.vector(.pred[,i]), actual=as.vector(.actual), heading=modelNames[i], newplot=F)
            }
          }
          )





