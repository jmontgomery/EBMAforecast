#' Function for actually fitting an EBMA model based on the calibration dataset
#'
#' The description goes here
#'`
#' @param .forecastData An object of class 'ForecastData' that will be used to calibrate the model
#' @param exp The exponent 
#' @param tol The tolerance for the EM algorithm
#' @param maxIter The number of iterations
#' @param method The estimation method used.  Currently only implements "EM"
#' @param ... Not implemented
#'
#' @return A data object of the class 'Ensemble' 
#'
#' @author Michael D. Ward and Jacob M. Montgomery
#'
#' @references Montgomery, Hollenbach, and Ward (2012). etc.
#'
#' @seealso ensembleBMA, other functions
#' @export
setGeneric(name="fitEnsemble",
           def=function(.forecastData, exp=1, tol=.001,maxIter=10000, method="EM", ...)
           {standardGeneric("fitEnsemble")}
           )


#' Method for logit
#' @rdname fitEnsemble-methods
#' @aliases fitEnsemble
#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataLogit"),
          definition=function(.forecastData, exp, tol, maxIter, method)
          {class(.forecastData)}
          )
