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
             model="logit",
             method="EM",
             ...)
           {standardGeneric("calibrateEnsemble")}
           )

#' Logistic method
#' @rdname calibrateEnsemble-methods
#' @aliases calibrateEnsemble calibrateEnsemble-logit
setMethod(f="calibrateEnsemble",
          definition=function(
            .forecastData,
            exp=1,
            tol=.001,
            maxIter=10000,
            model="logit",
            method="EM",
            ...)
          {
            switch(model,
                   logit ={.forecastData <- as(.forecastData, "ForecastDataLogit")},
                   logistic ={.forecastData <- as(.forecastData, "ForecastDataLogit")},
                   normal={.forecastData <- as(.forecastData, "ForecastDataNormal")}
                   )
            eval(fitEnsemble(.forecastData,
                             exp=exp,
                             tol=.001,
                             method="EM",
                             ...), parent.frame())
          }
          )




           

