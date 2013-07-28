
#' @export
setClass(Class="FDatFitNormal",
         contains="ForecastData",
         representation=representation(
           modelWeights="numeric",
           modelParams="array",
           variance="numeric",
           logLik="numeric",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           method="character",
           predType="character",
	   wisdom="numeric",  # Here through call are new
	   weight = "numeric",
	   sigma = "numeric",
           call="call"
           )
         )


