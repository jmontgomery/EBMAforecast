#' An S4 class that stores forecasting data
#'
#' @export
setClass(Class="ForecastData",
         representation = representation(
           predCalibration="data.frame",
           predTest="data.frame",
           outcomeCalibration="data.frame",
           outcomeTest="data.frame",
           modelNames="character"),
         prototype=prototype(
           predCalibration=data.frame(),
           predTest=data.frame(),
           outcomeCalibration=data.frame(),
           outcomeTest=data.frame(),
           modelNames=character()),
         validity=function(object){
           if(nrow(object@predCalibration)!=nrow(object@outcomeCalibration))
             {stop("The number of predictions and outcomes do not match in the calibration set")}
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
            .predCalibration=NULL,
            .predTest=NULL,
            .outcomeCalibration=NULL,
            .outcomeTest=NULL,
            .modelNames=NULL
             , ...)
           {standardGeneric("makeForecastData")}
           )


#' Default (direct entry) method
#' @rdname makeForecastData-methods
#' @aliases makeForecastData,standard-method
#' @export
setMethod(f="makeForecastData",
          definition=function(
            .predAll=NULL,
            .outcomeAll=NULL,
            .inOut=NULL,
            .predCalibration=NULL,
            .predTest=NULL,
            .outcomeCalibration=NULL,
            .outcomeTest=NULL,
            .modelNames=NULL)
          {
            .predCalibration <- as.data.frame(.predCalibration); .predTest <- as.data.frame(.predTest)
            .outcomeCalibration <- as.data.frame(.outcomeCalibration);   .outcomeTest <- as.data.frame(.outcomeTest)
            .predCalibration <- as.data.frame(.predAll[.inOut==0,])
            .predTest <- as.data.frame(.predAll[.inOut==1,])
            .outcomeCalibration <- as.data.frame(.outcomeAll[.inOut==0,])
            .outcomeTest <- as.data.frame(.outcomeAll[.inOut==1,])
            .modelNames <- character()
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


#TODO: Make a print(), show(), and plot() functions for these objects. May also want to make a function something that calculates stats (i.e., brier) for the base model
#TODO: improve validity checks for the class formation
#TODO: need get and set functions for basically every slot.
#TODO: What is going on with the aliasing?
