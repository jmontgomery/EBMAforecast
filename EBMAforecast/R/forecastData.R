#' An S4 class that stores forecasting data
#'
#' @export
setClass(Class="ForecastData",
         representation = representation(
           predCalibration="matrix",
           predTest="matrix",
           outcomeCalibration="matrix",
           outcomeTest="matrix",
           modelNames="character"),
         prototype=prototype(
           predCalibration=matrix(NA, nrow=0, ncol=0),
           predTest=matrix(NA, nrow=0, ncol=0), 
           outcomeCalibration=matrix(NA, nrow=0, ncol=0),
           outcomeTest=matrix(NA, nrow=0, ncol=0),
           modelNames=character()),
         validity=function(object){
           if(nrow(object@predCalibration)!=nrow(object@outcomeCalibration))
             {stop("The number of predictions and outcomes do not match in the calibration set")}
           if(ncol(object@outcomeTest)>1 || ncol(object@outcomeCalibration)>1)
             {stop("The outcomes should be organized as a matrix with only one column")}
         }
         )


##
#' @export
setMethod("initialize", "ForecastData", function(.Object, ...) {
  value = callNextMethod()
  validObject(value)
  return(value)
})



##
#' An S4 Class that stores forecasting data to be used in a logit model
#'
#' @export
setClass(Class="ForecastDataLogit",
         contains="ForecastData")

##
#' An S4 Class that stores forecasting data to be used in a normal modeel
#'
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
#' The description goes here
#'
#' @param .predAll An n by p matrix of data.frame containing predictions for both the calibration and test observations
#' @param .outcomeAll description
#' @param .inOut A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param .predCalibration A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param .predTest A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param .outcomeCalibration A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param .outcomeTest A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param .modelNames A dichotomous vector of length, where 1 indicates the observation is in the test sample
#' @param ... Additional arguments not implemented
#'
#' @return A data object of the class 'ForecastData' with the following slots: 
#' \item{slot1}{Description of slot 1} 
#' \item{slot2}{Description of slot 2}
#'
#' @author Michael D. Ward and Jacob M. Montgomery
#'
#' @references Montgomery, Hollenbach, and Ward (2012). etc.
#'
#' @seealso ensembleBMA, other functions
#' @export
setGeneric(name="makeForecastData",
           def=function(.predAll=NULL,
             .outcomeAll=NULL,
             .inOut=NULL,
            .predCalibration=matrix(NA, nrow=0, ncol=0),
             .predTest=matrix(NA, nrow=0, ncol=0),
             .outcomeCalibration=matrix(NA, nrow=0, ncol=0),
            .outcomeTest=matrix(NA, nrow=0, ncol=0),
             .modelNames=character(),
             ...)
           {standardGeneric("makeForecastData")}
           )


#' Default (direct entry) method
#' @rdname makeForecastData-methods
#' @aliases makeForecastData,standard-method
#' @export
setMethod(f="makeForecastData",
          definition=function(
            .predAll,
            .outcomeAll,
            .inOut,
            .predCalibration,
            .predTest,
            .outcomeCalibration,
            .outcomeTest,
            .modelNames)
          {
            .predCalibration <- as.matrix(.predCalibration); .predTest <- as.matrix(.predTest)
            .outcomeCalibration <- as.matrix(.outcomeCalibration);   .outcomeTest <- as.matrix(.outcomeTest)
            if(!is.null(.predAll)){.predCalibration <- as.matrix(.predAll[.inOut==0,])
                                   .predTest <- as.matrix(.predAll[.inOut==1,])}
            if(!is.null(.outcomeAll)){.outcomeCalibration <- as.matrix(.outcomeAll[.inOut==0])
                                      .outcomeTest <- as.matrix(.outcomeAll[.inOut==1])}
            if(length(.modelNames)<ncol(.predCalibration)){
              .modelNames <- paste("Model", 1:ncol(.predCalibration))
            }
            colnames(.predCalibration) <- .modelNames; rownames(.predCalibration) <- 1:nrow(.predCalibration)
            if (length(.predTest)>0){
              colnames(.predTest) <- .modelNames
              rownames(.predTest) <- 1:nrow(.predTest)
            }
            colnames(.outcomeCalibration) <- "Outcome"; rownames(.outcomeCalibration) <- 1:nrow(.outcomeCalibration)
            if(length(.outcomeTest)>0){colnames(.outcomeTest) <- "Outcome"; rownames(.outcomeTest) <- 1:nrow(.outcomeTest)}
            
            return(new("ForecastData", predCalibration=.predCalibration, predTest=.predTest,
                       outcomeCalibration=.outcomeCalibration, outcomeTest=.outcomeTest, modelNames=.modelNames))

          }
          )


#TODO: 1) put in more checks/warnings
#      2) improve documentation
#      3) Develop some test vignettes to try and break this doing possible errors/misunderstandings
#      4) Need another version of this to deal with data as created for the ensembleBMA package
#      5) Should build an example.
#      6) Haven't done the model names yet.  Should default to something reasonable.


#TODO: Make a print(), show(), and plot() functions for these objects. May also want to make a function something that calculates stats (i.e., brier) for the base model.  
#TODO: improve validity checks for the class formation for both mathematical and substantive checks.
#TODO: need get and set functions for basically every slot.
#TODO: What is going on with the aliasing?
#TODO: make sure the setModelNames() function also replaces appropriate column names.That should also be one of the valid tests.
