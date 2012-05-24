
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
#' Function for comparing multiple models based on predictive performance
#'
#' This function produces statistics to compare the predictive performance of the different models in included as well as for the EBMA model. 
#'
#' @param .forecastData An object of class 'ForecastData'. 
#' @param .period Can take value of "calibration" or "test" and indicates period for which statistics should be calculated.
#' @param .fitStatistics A vector naming statistics that should be calculated.  Possible values include "auc", "brier", "percCorrect", "pre". 
#' @param .threshold The threshold used to calculate when a "positive" prediction is made by the model.
#' @param .baseModel Vector containing predictions used to calculate proportional reduction of error ("pre").
#' @param ... Not implemented
#'
#' @return A data object of the class 'CompareModels' 
#'
#' @author  Michael D. Ward <\link{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\link{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#'
#' @references Raftery, A. E., T. Gneiting, F. Balabdaoui and M. Polakowski. (2005). Using Bayesian Model Averaging to calibrate forecast ensembles. \emph{Monthly Weather Review}. \bold{133}:1155--1174.
#' @references Sloughter, J. M., A. E. Raftery, T. Gneiting and C. Fraley. (2007). Probabilistic quantitative precipitation forecasting using Bayesian model averaging. \emph{Monthly Weather Review}. \bold{135}:3209--3220.
#' @references Fraley, C., A. E. Raftery, T. Gneiting. (2010). Calibrating Multi-Model Forecast Ensembles with Exchangeable and Missing Members using Bayesian Model Averaging. \emph{Monthly Weather Review}. \bold{138}:190--202.
#' @references Sloughter, J. M., T. Gneiting and A. E. Raftery. (2010). Probabilistic wind speed forecasting using ensembles and Bayesian model averaging. \emph{Journal of the American Statistical Association}. \bold{105}:25--35.
#' 
#' @examples R compareModels(this.ensemble,"test") compareModels(this.ensemble,"calibration")

#' @seealso ensembleBMA, other functions
#'@importFrom Hmisc somers2
#'@importMethodsFrom Hmisc somers2
#'@import Hmisc
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
                num.wrong <- num.obs-sum((x>.threshold)*y + (x<.threshold)*(1-y))
                baseline.wrong <- num.obs-sum(baseModel==y)
                (baseline.wrong - num.wrong)/baseline.wrong
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
