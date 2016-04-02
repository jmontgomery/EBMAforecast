#' "Set" functions
#'
#' To assign individual slots, use set functions
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2015). Calibrating ensemble forecasting models with sparse data in the social sciences.   \emph{International Journal of Forecasting}. In Press.
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. \bold{20}: 271-291.
#'
#' @examples
#'
#' setPredCalibration(this.ForecastData)<-calibrationSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeCalibration(this.ForecastData)<-calibrationSample[,"Insurgency"]
#' setPredTest(this.ForecastData)<-testSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeTest(this.ForecastData)<-testSample[,"Insurgency"]
#' setModelNames(this.ForecastData)<-c("LMER", "SAE", "GLM")
#' @rdname setFunctions
#' @export
setGeneric("setPredCalibration<-",function(object,value){standardGeneric("setPredCalibration<-")})

#' @export
setReplaceMethod(
	f="setPredCalibration",
	signature="ForecastData",
	definition=function(object,value){
          if(class(value)=="data.frame"){value <- as.matrix(value)}
          if(class(value)=="matrix"){value <- array(value, dim=c(nrow(value), ncol(value), 1))}
          object@predCalibration = value
          validObject(object)
          return(object)
	}
)


#' @export
setGeneric("setPredTest<-",function(object,value){standardGeneric("setPredTest<-")})

#' @export
setReplaceMethod(
	f="setPredTest",
	signature="ForecastData",
	definition=function(object,value){
          if(class(value)=="data.frame"){value <- as.matrix(value)}
          if(class(value)=="matrix"){value <- array(value, dim=c(nrow(value), ncol(value), 1))}
          object@predTest<- value
		validObject(object)
		return(object)
	}
)

#' @export
setGeneric("setOutcomeCalibration<-",function(object,value){standardGeneric("setOutcomeCalibration<-")})

#' @export
setReplaceMethod(
	f="setOutcomeCalibration",
	signature="ForecastData",
	definition=function(object,value){
		object@outcomeCalibration <- value
		validObject(object)
		return(object)
	}
)

#' @export
setGeneric("setOutcomeTest<-",function(object,value){standardGeneric("setOutcomeTest<-")})

#' @export
setReplaceMethod(
	f="setOutcomeTest",
	signature="ForecastData",
	definition=function(object,value){
		object@outcomeTest<-value
		validObject(object)
		return(object)
	}
)

#' @export
setGeneric("setModelNames<-",function(object,value){standardGeneric("setModelNames<-")})


#' @export
setReplaceMethod(
	f="setModelNames",
	signature="ForecastData",
	definition=function(object,value){
		object@modelNames <-value
		colnames(object@predCalibration)<-value
		colnames(object@predTest)<-value
		validObject(object)
		return(object)
	}
)




