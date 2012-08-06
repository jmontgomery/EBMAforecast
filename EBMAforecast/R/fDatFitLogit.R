
#' @export
setClass(Class="FDatFitLogit",
         contains="ForecastData",
         representation=representation(
           modelWeights="numeric",
           modelParams="array",
           logLik="numeric",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           method="character",
           call="call"
           ),
         validity=function(object){
           if(length(object@modelWeights)>0){
             if(sum(object@modelWeights)<=.99 || sum(object@modelWeights)>1.01){
             stop("Model weights should sum to approximately one.")
           }
           }
         }
         )


##
#' Plotting function for ensemble models of the class "FDatFitLogit" or "FDatFitNormal", which are the objects created by the calibrateEnsemble() funciton.
#'
#' For objects of the class "FDatFitLogit", this function creates separation plots for each of the fitted models, including the EBMA model. Observations are ordered from left to right with increasing predicted probabilities, which is depicted by the black line. Actual occurrences are displayed by red vertical lines. Plots can be dislayed for the test or calibration period.
#'
#' For objects of the class "FDatFitNormal", this function creates a plot of the predictive density distribution containing the EBMA PDF and the PDFs for all components (scaled by their model weights).  It also plots the prediction for the ensemble and the components for the specified observations.
#'
#' @param x An object of class "FDatFitLogit" or "FDatFitNormal"
#' @param period Can take value of "calibration" or "test" and indicates the period for which the plots should be produced.
#' @param subset The row names or numbers for the observations the user wishes to plot.  Only implemented for the subclass "FDatFitLogit"
#'
#' @method plot FDatFitLogit
#' @return NULL
#'
#' @author  Michael D. Ward <\email{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\email{jacob.montgomery@@wustl.edu}>
#'
#' @references Raftery, A. E., T. Gneiting, F. Balabdaoui and M. Polakowski. (2005). Using Bayesian Model Averaging to calibrate forecast ensembles. \emph{Monthly Weather Review}. \bold{133}:1155--1174.
#' @references Greenhill, B., M.D. Ward, A. Sacks. (2011). The Separation Plot: A New Visual Method For Evaluating the Fit of Binary Data. \emph{American Journal of Political Science}.\bold{55}: 991--1002.
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. \bold{20}: 271-291.
#'
#' @seealso \code{separationplot}
#'
#' @examples data(calibrationSample)
#'
#' data(testSample) 
#' 
#' this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
#' .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
#' .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
#' 
#' this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001, exp=3)
#' 
#' plot(this.ensemble, period="calibration") 
#' plot(this.ensemble, period="test")
#'
#' @aliases plot,FDatFitLogit-method plot,FDatFitNormal-method
#' @export
setMethod(
          f="plot",
          signature="FDatFitLogit",
          definition=function(x, y=NULL, period="calibration", ...){
            nDraw=1
            numModels <- length(x@modelWeights)+1
            modelNames <- c("EBMA", x@modelNames)
            if(period=="calibration"){
              .pred <- x@predCalibration; .actual <- x@outcomeCalibration
            }
            else{
              .pred <- x@predTest; .actual <- x@outcomeTest
            }
            par(mgp=c(1, 0, 0), lend = 2, mar=c(1,0,1,0), mfrow=c(numModels, 1))
            for (i in 1:numModels){
              .miss <- is.na(.pred[,i, nDraw])
              separationplot(pred=as.vector(.pred[!.miss,i, nDraw]), actual=as.vector(.actual[!.miss]), heading=modelNames[i], newplot=F)
            }
          }
          )





