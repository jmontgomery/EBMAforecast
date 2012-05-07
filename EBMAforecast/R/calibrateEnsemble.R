#' Calibrate and ensemble Bayesian Model Averaging model
#'
#' Calibrate an EBMA model based on out-of-sample performance in the calibration time period
#'
#'
#' @param .forecastData An object of class 'ForecastData' that will be used to calibrate the model
#' @param exp The exponent 
#' @param tol The tolerance for the EM algorithm
#' @param maxIter The number of iterations
#' @param model The type of data it is (i.e., normal, binary, etc.)
#' @param method The estimation method used.  Currently only implements "EM"
#' @param ... Not implemented
#'
#' @return Returns a data of class 'Ensemble'
#'
#' @author Michael D. Ward and Jacob M. Montgomery
#'
#' @references Montgomery, Hollenbach, and Ward (2012), etc.
#'
#' @export
setGeneric(name="calibrateEnsemble",
           def=function(.forecastData=new("ForecastData"),
             exp=1,
             tol=.001,
             maxIter=10000,
             model="normal",
             method="EM",
             ...)
           {standardGeneric("calibrateEnsemble")}
           )

#' Logistic method
#' @rdname calibrateEnsemble-methods
#' @aliases calibrateEnsemble calibrateEnsemble-logit


#' An S4 class that stores a calibrated ensemble BMA model
#'
#' @export
setClass(Class="Ensemble",
         representation = representation(
           .forecastData="ForecastData",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           model="character"),
         prototype=prototype(
           .forecastData=new("ForecastData"),
           exp=numeric(),
           tol=numeric(),
           maxIter=integer()
           model=character()),
         validity=function(object){
           if(object@maxIter%%1!=0){stop("The number of iterations must be a positive integer")}
           if(object@maxIter<1){stop("The number of iterations must be a positive integer")}
         }
         )  
           

