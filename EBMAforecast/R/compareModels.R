#' An S4 class that stores forecasting data
#'
#' @export
setClass(Class="CompareModels",
         representation = representation(
           fitStatistics="matrix",
           period="character",
           threshold="numeric",
           baseModel="numeric"),
         prototype=prototype(
           fitStatistics=matrix(NA, nrow=0, ncol=0),
           period=character(),
           threshold=numeric(),
           baseModel=numeric()
           ),
         validity=function(object){
           if(object@period!="test" & object@period!="calibration"){
             stop("Period must either be for 'calibration' or 'test'")
           }
         }
         )

##
#' Function for comparing multiple models based on performance
#'
#' The description goes here
#'`
#' @param .forecastData An object of class 'ForecastData' 
#' @param period Can take value of "calibration" or "test" and indicates period for which statistics should be calculated
#' @param comparisons A vector naming statistics that should be calculated.  Possible values include "auc", "brier", "percCorrect", "pre" 
#' @param threshold The threshold used to calculate when a "positive" prediction is made by the model
#' @param baseModel Vector containing predictions used to calculate proportional reduction of error ("pre") 
#' @param ... Not implemented
#'
#' @return A data object of the class 'CompareModels' 
#'
#' @author Michael D. Ward and Jacob M. Montgomery
#'
#' @references Montgomery, Hollenbach, and Ward (2012). etc.
#'
#' @seealso ensembleBMA, other functions
#' @export
setGeneric(name="compareModels",
           def=function(.forecastData,
             .period="calibration",
             .fitStatistics=c("brier", "auc", "perCorrect", "pre"),
             .threshold=.5,
            .baseModel=0
             , ...)
           {standardGeneric("compareModels")}
           )

#'@importFrom Hmisc somers2
#'@importMethodsFrom Hmisc somers2
#'@import Hmisc

##
#' Method for logit
#' @rdname fitEnsemble-methods
#' @aliases fitEnsemble
#' @export
setMethod(f="compareModels",
          signature(.forecastData="ForecastData"),
          definition=function(.forecastData, .period, .fitStatistics, .threshold, .baseModel)
          {
            if(.period == "calibration")
              {
                preds <- .forecastData@predCalibration
                y <- .forecastData@outcomeCalibration
              }
            else
              {
                preds <- .forecastData@predTest
                y <- .forecastData@outcomeTest
              }
            
            num.models <- ncol(preds)
            num.obs <- nrow(preds)
            if(length(.baseModel)==1){baseModel <- rep(.baseModel, num.obs)}

            out <- new("CompareModels",                       
                       period=.period,
                       threshold=.threshold,
                       baseModel=.baseModel
                       )
            outMat <- matrix(NA, nrow=num.models, ncol=length(.fitStatistics))
            colnames(outMat) <- .fitStatistics
            
            if("brier" %in%.fitStatistics){
              my.fun <- function(x){mean((x-y)^2)}
              outMat[,"brier"] <-aaply(preds, 2,.fun=my.fun, .expand=TRUE)
                                             }
            if("auc" %in% .fitStatistics){
              my.fun <- function(x){Hmisc::somers2(x, y)[1]}
              outMat[,"auc"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)}
            if("perCorrect" %in% .fitStatistics){
              my.fun <- function(x){mean((x>.threshold)*y + (x<.threshold)*(1-y))}
              outMat[,"perCorrect"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)
            }
            if("pre" %in% .fitStatistics) {
              my.fun <- function(x){
                num.right <- sum((x>.threshold)*y + (x<.threshold)*(1-y))
                baseline.right <- sum(baseModel==y)
                (baseline.right - (num.obs-num.right))/baseline.right
              }
              outMat[,"pre"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)
            }
            
          out@fitStatistics <- outMat
            rownames(outMat) <- colnames(preds)
          return(outMat)
        }
)
# TODO: Need to make it so that some fit statistics are "ruled out" for some kinds of outcomes.
# TODO: Need to fix how it calls somers2.  I don't think what I am doing is right.  I should be able to do that with the NAMESPACE file.
# TODO: Need to make the compareModels() function throw an error when asked to evaluate over period where the data is not sufficient.
