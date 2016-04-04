##
#' Print and Show methods for summaries of forecast data
#'
#' Functions to print and show the contents of a data object of the class 'SummaryForecastData'.
#'
#' @param object An object of the class 'SummaryForecastData'.
#'
#' @return NULL
#' 
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2015). Calibrating ensemble forecasting models with sparse data in the social sciences.   \emph{International Journal of Forecasting}. \bold{31}: 930-942.
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. \bold{20}: 271-291.
#'
#' @author  Michael D. Ward <\email{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\email{jacob.montgomery@@wustl.edu}> and Florian M. Hollenbach <\email{florian.hollenbach@@tamu.edu}>
#'
#' @examples \dontrun{ data(calibrationSample)
#'
#' data(testSample) 
#' 
#' this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
#' .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
#' .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
#' 
#' this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001,exp=3)
#' 
#' summary.object <- summary(this.ensemble, period="calibration") 
#' print(summary.object)
#' show(summary.object)
#'}
#' @aliases print,SummaryForecastData-method show,SummaryForecastData-method
#' @rdname PrintShow
#' @export
setMethod(
  f="print",
  signature="SummaryForecastData",
  definition=function(x, digits=3, ...){
    print(x@summaryData, na.print="", digits=digits)
  }
)

#' @export
setMethod(
  f="show",
  signature="SummaryForecastData",
  definition=function(object){
    print(object@summaryData, na.print="", digits=3)
  }
)