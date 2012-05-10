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









