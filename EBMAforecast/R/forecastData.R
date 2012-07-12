#' An ensemble forecasting data object
#'
#' Objects of class \code{ForecastData} are used in the \code{calibrateEnsemble} function. Datasets should be converted into an object of class \code{ForecastData} using the \code{makeForecastData} function. Individual slots of the \code{ForecastData} object can be accessed and changed using the \code{get} and \code{set} functions respectively.
#'
#'
#' A data object of the class 'ForecastData' has the following slots: 
#' \itemize{
#' \item \code{predCalibration} An array containing the predictions of all component models for all observations in the calibration period.
#' \item \code{predTest} An array containing the predictions of all component models for all observations in the test period.
#' \item \code{outcomeCalibration} A vector containing the true values of the dependent variable for all observations in the calibration period. 
#' \item \code{outcomeTest} A vector containing the true values of the dependent variable for all observations in the test period.
#' \item \code{modelNames} A character vector containing the names of all component models. }
#'
#' @author  Michael D. Ward <\email{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\email{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#'
#' @examples  data(calibrationSample)
#' 
#' data(testSample) 
#' this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
#' .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
#' .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
#' 
#' ### to acces individual slots in the ForecastData object
#' getPredCalibration(this.ForecastData)
#' getOutcomeCalibration(this.ForecastData)
#' getPredTest(this.ForecastData)
#' getOutcomeTest(this.ForecastData)
#' getModelNames(this.ForecastData)
#' 
#' ### to assign individual slots, use set funtions
#'
#' setPredCalibration(this.ForecastData)<-calibrationSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeCalibration(this.ForecastData)<-calibrationSample[,"Insurgency"]
#' setPredTest(this.ForecastData)<-testSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeTest(this.ForecastData)<-testSample[,"Insurgency"]
#' setModelNames(this.ForecastData)<-c("LMER", "SAE", "GLM")
#'
#' @seealso ensembleBMA, other functions
#' @aliases ForecastData-method initialize,ForecastData-method setPredCalibration,ForecastData-method setOutcomeCalibration,ForecastData-method setPredTest,ForecastData-method setOutcomeTest,ForecastData-method setModelNames,ForecastData-method makeForecastData,ANY-method print,ForecastData-method setModelNames<-,ForecastData-method setOutcomeCalibration<-,ForecastData-method setOutcomeTest<-,ForecastData-method setPredCalibration<-,ForecastData-method setPredTest<-,ForecastData-method show,ForecastData-method ForeCastData-class
#' @rdname ForecastData	
#' @export
setClass(Class="ForecastData",
         representation = representation(
           predCalibration="array",
           predTest="array",
           outcomeCalibration="numeric",
           outcomeTest="numeric",
           modelNames="character"),
         prototype=prototype(
           predCalibration=array(NA, dim=c(0,0,0)),
           predTest=array(NA, dim=c(0,0,0)), 
           outcomeCalibration=numeric(),
           outcomeTest=numeric(),
           modelNames=character()),
         validity=function(object){
         	if(dim(object@predCalibration)[3]>1 || dim(object@predTest)[3]>1 || dim(object@outcomeCalibration)[3]>1 || dim(object@outcomeTest)[3]>1 )
         	{stop("The package currently only supports matrices, not arrays. Coming soon!")}
           if(nrow(object@predCalibration)!=length(object@outcomeCalibration))
             {stop("The number of predictions and outcomes do not match in the calibration set.")}
           if(nrow(object@predTest)!=length(object@outcomeTest))
             {stop("The number of predictions and outcomes do not match in the test set.")}  
           if(length(object@predTest)>0){
             if(ncol(object@predTest)!=ncol(object@predCalibration))
               {stop("The number of prediction models in the calibration and test set are different.")}    
             if(dim(object@predTest)[3]!=dim(object@predCalibration)[3])
               {stop("The number of exchangeable draws per model in the calibration and test are different.")}
           }
           if(sum(is.na(object@outcomeCalibration)) > 0)
             {stop("There are NAs in the outcome calibration set, these observations should be deleted from the data.")}
           if(sum(is.na(object@outcomeTest)) > 0)
             {stop("There are NAs in the outcome test set, these observations should be deleted from the data.")}
           }  
         )


##
#' @export
setMethod("initialize", "ForecastData", function(.Object, ...) {
  value = callNextMethod()
  validObject(value)
  return(value)
})


#' @export
setClass(Class="ForecastDataLogit",
         contains="ForecastData"
         #,
#         validity=function(object){
#         	if(any(object@outcomeCalibration!=1 & object@outcomeCalibration!=0 )) 
#         	{stop("The outcomes for the binary model should be either 0 or 1 (Not true for outcome calibration set).")}	
#         	if(any(object@outcomeTest!=1 & object@outcomeTest!=0 & )) 
##         	{stop("The outcomes for the binary model should be either 0 or 1 (Not true for outcome test set).")}	
#         	if(min(object@predCalibration, na.rm=TRUE)<0 || max(object@predCalibration, na.rm=TRUE)>1)
#         	{stop("The predictions for the binary model should be between 0 or 1 (Not true for prediction calibration set).")}	
#         	if(min(object@predTest)<0 || max(object@predTest)>1)
#         	{stop("The predictions for the binary model should be between 0 or 1 (Not true for prediction test set).")}	
#         	}
)


#' @export
setClass(Class="ForecastDataNormal",
         contains="ForecastData")


##
setAs(from="ForecastData", to="ForecastDataLogit",
      def=function(from){
        new("ForecastDataLogit",
            predCalibration=from@predCalibration,
            predTest=from@predTest,
            outcomeCalibration=from@outcomeCalibration,
            outcomeTest=from@outcomeTest,
            modelNames=from@modelNames)
}
)

##
setAs(from="ForecastData", to="ForecastDataNormal",
      def=function(from){
        new("ForecastDataNormal",
            predCalibration=from@predCalibration,
            predTest=from@predTest,
            outcomeCalibration=from@outcomeCalibration,
            outcomeTest=from@outcomeTest,
            modelNames=from@modelNames)
      }
      )



#' Build a ensemble forecasting data object
#'
#' This function uses the user provided component model forecasts and dependent variable observations to create an object of class \code{ForecastData}, which can then be used to calibrate and fit the Ensemble. Individual slots of the \code{ForecastData} object can be accessed and changed using the \code{get} and \code{set} functions respectively.
#'
#' @param .predAll An n by p matrix or data.frame containing predictions, for both the calibration and test observations.  This may also be a n by p by m array containing multiple predictions for each model.  Missing values are allowed.
#' @param .outcomeAll A vector of length n, containing the true values of the dependent variable, for both the calibration and test observations.
#' @param .inOut A dichotomous vector of length n, where 1 indicates that the observation is in the test sample and 0 that it is in the calibration sample.
#' @param .predCalibration A matrix with the number of rows being the number of observations in the calibration period and a column with calibration period predictions for each model.
#' @param .predTest A matrix with the number of rows being the number of observations in the test period and a column with test period predictions for each model.
#' @param .outcomeCalibration A vector with the true values of the dependent variable for each observation in the calibration period.  
#' @param .outcomeTest A vector with the true values of the dependent variable for each observation in the test period.
#' @param .modelNames A vector of length p with the names of the component models.  
#' @param ... Additional arguments not implemented
#'
#' @return A data object of the class 'ForecastData' with the following slots: 
#' \item{predCalibration}{An array containing the predictions of all component models for all observations in the calibration period.} 
#' \item{predTest}{An array containing the predictions of all component models for all observations in the test period.}
#' \item{outcomeCalibration}{A vector containing the true values of the dependent variable for all observations in the calibration period.} 
#' \item{outcomeTest}{A vector containing the true values of the dependent variable for all observations in the test period.}
#' \item{modelNames}{A character vector containing the names of all component models.  If no model names are specified, names will be assigned automatically.}
#' @author  Michael D. Ward <\email{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\email{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#'
#' @examples  data(calibrationSample)
#' 
#' data(testSample) 
#' this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
#' .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
#' .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
#' 
#' ### to acces individual slots in the ForecastData object
#' getPredCalibration(this.ForecastData)
#' getOutcomeCalibration(this.ForecastData)
#' getPredTest(this.ForecastData)
#' getOutcomeTest(this.ForecastData)
#' getModelNames(this.ForecastData)
#' 
#' ### to assign individual slots, use set funtions
#'
#' setPredCalibration(this.ForecastData)<-calibrationSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeCalibration(this.ForecastData)<-calibrationSample[,"Insurgency"]
#' setPredTest(this.ForecastData)<-testSample[,c("LMER", "SAE", "GLM")]
#' setOutcomeTest(this.ForecastData)<-testSample[,"Insurgency"]
#' setModelNames(this.ForecastData)<-c("LMER", "SAE", "GLM")
#'
#' @seealso ensembleBMA, other functions
#' @rdname makeForecastData
#' @export
setGeneric(name="makeForecastData",
           def=function(
            .predCalibration=array(NA, dim=c(0,0,0)),
             .predTest=array(NA, dim=c(0,0,0)),
             .outcomeCalibration=numeric(),
            .outcomeTest=numeric(),
             .modelNames=character(),
             ...)
           {standardGeneric("makeForecastData")}
           )



#' @export
setMethod(f="makeForecastData",
          definition=function(
            .predCalibration,
            .predTest,
            .outcomeCalibration,
            .outcomeTest,
            .modelNames)
          {
            if(class(.predCalibration)=="data.frame"){.predCalibration <- as.matrix(.predCalibration)}
            if(class(.predTest)=="data.frame"){.predTest <- as.matrix(.predTest)}
            if(class(.predCalibration)=="matrix"){.predCalibration <- array(.predCalibration, dim=c(nrow(.predCalibration), ncol(.predCalibration), 1))}
            if(class(.predTest)=="matrix"){.predTest <- array(.predTest, dim=c(nrow(.predTest), ncol(.predTest), 1))}
            if(length(.modelNames)<ncol(.predCalibration)){
              .modelNames <- paste("Model", 1:ncol(.predCalibration))
            }
            if(length(.predCalibration)>0){
              colnames(.predCalibration) <- .modelNames; rownames(.predCalibration) <- 1:nrow(.predCalibration)
            }
            if (length(.predTest)>0){
              colnames(.predTest) <- .modelNames; rownames(.predTest) <- 1:nrow(.predTest)
            }
            if(length(.outcomeCalibration>0)) {names(.outcomeCalibration) <- 1:length(.outcomeCalibration)}
            if(length(.outcomeTest>0))  {names(.outcomeTest) <- 1:length(.outcomeTest)}
            
            return(new("ForecastData", predCalibration=.predCalibration, predTest=.predTest,
                       outcomeCalibration=.outcomeCalibration, outcomeTest=.outcomeTest, modelNames=.modelNames))
            
          }
          )


#' @export
setMethod(
		f="print",
		signature="ForecastData",
		definition=function(x, digits=3, ...){
			cat("* Prediction Calibration = \n"); print(x@predCalibration, na.print="", digits=digits);
			cat("* Prediction Test = \n"); print(x@predTest, na.print="", digits=digits);
				cat("* Outcome Calibration = \n");print(x@outcomeCalibration, na.print="", digits=digits);
				cat("* Outcome Test = \n");print(x@outcomeTest, na.print="", digits=digits);
				cat("* Model Names = \n ");print(x@modelNames, na.print="");
			}
			)

#' @export
setMethod(
		f="show",
		signature="ForecastData",
		definition=function(object){
                  if (length(object@predCalibration)==0) {
			cat("* Prediction Calibration = \n"); print(object@predCalibration, na.print="", digits=1);
			cat("* Prediction Test = \n"); print(object@predTest, na.print="", digits=1);
				cat("* Outcome Calibration = \n");print(object@outcomeCalibration, na.print="", digits=1);
				cat("* Outcome Test = \n");print(object@outcomeTest, na.print="", digits=1);
				cat("* Model Names = \n ");print(object@modelNames, na.print="");
                  }
                  else{
                  nrowCal=min(10,nrow(object@predCalibration))
                  nrowTest=min(10,nrow(object@predTest))
                  cat("Prediction Calibration = \n"); print(object@predCalibration[1:nrowCal,1:ncol(object@predCalibration),1], na.print="", digits=2);
                  cat("* Prediction Test =\n"); print(object@predTest[1:nrowTest,1:ncol(object@predTest),1], na.print="", digits=2);
                  cat("* Outcome Calibration = \n"); print(object@outcomeCalibration[1:nrowCal],na.print="", digits=2);
                  cat("* Outcome Test = \n");print(object@outcomeTest[1:nrowTest], na.print="", digits=2);
                  cat("* Model Names = \n "); print(object@modelNames,na.print="");
                  cat("*** End Show (Forecast Data) *** \n")
                }
                }
          )

#' @rdname ForecastData
#' @export
setGeneric("getPredCalibration",function(object="ForecastData") standardGeneric("getPredCalibration"))

#' @export
setMethod("getPredCalibration","ForecastData",function(object){
	return(object@predCalibration)
}
)

#' @rdname ForecastData
#' @export
setGeneric("getPredTest",function(object="ForecastData") standardGeneric("getPredTest"))
#' @export
setMethod("getPredTest","ForecastData",
	function(object){
		return(object@predTest)
		}
)


#' @rdname ForecastData
#' @export
setGeneric("getOutcomeCalibration",function(object="ForecastData") standardGeneric("getOutcomeCalibration"))
#' @export
setMethod("getOutcomeCalibration","ForecastData",
	function(object="ForecastData"){
		return(object@outcomeCalibration)
		}
)


#' @rdname ForecastData
#' @export
setGeneric("getOutcomeTest",function(object="ForecastData") standardGeneric("getOutcomeTest"))
#' @export
setMethod("getOutcomeTest","ForecastData",
	function(object="ForecastData"){
		return(object@outcomeTest)
		}
)


#' @rdname ForecastData
#' @export
setGeneric("getModelNames",function(object="ForecastData") standardGeneric("getModelNames"))
#' @export
setMethod("getModelNames","ForecastData",
	function(object="ForecastData"){
		return(object@modelNames)
		}
)

#' @rdname ForecastData
#' @export
setGeneric("setPredCalibration<-",function(object,value){standardGeneric("setPredCalibration<-")})

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

#' @rdname ForecastData
#' @export
setGeneric("setPredTest<-",function(object,value){standardGeneric("setPredTest<-")})

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

#' @rdname ForecastData
#' @export
setGeneric("setOutcomeCalibration<-",function(object,value){standardGeneric("setOutcomeCalibration<-")})

setReplaceMethod(
	f="setOutcomeCalibration",
	signature="ForecastData",
	definition=function(object,value){
		object@outcomeCalibration <- value
		validObject(object)
		return(object)
	}
)

#' @rdname ForecastData
#' @export
setGeneric("setOutcomeTest<-",function(object,value){standardGeneric("setOutcomeTest<-")})

setReplaceMethod(
	f="setOutcomeTest",
	signature="ForecastData",
	definition=function(object,value){
		object@outcomeTest<-value
		validObject(object)
		return(object)
	}
)

#' @rdname ForecastData
#' @export
setGeneric("setModelNames<-",function(object,value){standardGeneric("setModelNames<-")})

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



