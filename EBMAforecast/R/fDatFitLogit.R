
#' @export
setClass(Class="FDatFitLogit",
         contains="ForecastData",
         representation=representation(
           modelWeights="numeric",
           modelParams="matrix",
           logLik="numeric",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           method="character",
           call="call"
           ),
         prototype=prototype(
           modelWeights=numeric(),
           modelParams=matrix(NA, nrow=0, ncol=0),
           logLik=numeric(),
           exp=numeric(),
           tol=numeric(),
           maxIter=numeric(),
           method=character(),
           call=call(" ")
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
#' Plotting function for logistic ensemble models that have already been fit
#'
#' This function creates separation plots for each of the fitted models, including the EBMA model. Observations are ordered from left to right with increasing predicted probabilities, which is depicted by the black line. Actual occurrences are displayed by red vertical lines. Plots can be dislayed for the test or calibration period.
#'
#' @param x An object of class "FDatFitLogit".
#' @param y I don't know.
#'
#' @method plot FDatFitLogit
#' @return Returns a separation plot for each of the models.
#'
#' @author  Michael D. Ward <\link{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\link{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#' @references Greenhill, B., M.D. Ward, A. Sacks. (2011). The Separation Plot: A New Visual Method For Evaluating the Fit of Binary Data. \emph{American Journal of Political Science}.\bold{55}: 991--1002.
#'
#' @references Raftery, A. E., T. Gneiting, F. Balabdaoui and M. Polakowski. (2005). Using Bayesian Model Averaging to calibrate forecast ensembles. \emph{Monthly Weather Review}. \bold{133}:1155--1174.
#' @references Sloughter, J. M., A. E. Raftery, T. Gneiting and C. Fraley. (2007). Probabilistic quantitative precipitation forecasting using Bayesian model averaging. \emph{Monthly Weather Review}. \bold{135}:3209--3220.
#' @references Fraley, C., A. E. Raftery, T. Gneiting. (2010). Calibrating Multi-Model Forecast Ensembles with Exchangeable and Missing Members using Bayesian Model Averaging. \emph{Monthly Weather Review}. \bold{138}:190--202.
#' @references Sloughter, J. M., T. Gneiting and A. E. Raftery. (2010). Probabilistic wind speed forecasting using ensembles and Bayesian model averaging. \emph{Journal of the American Statistical Association}. \bold{105}:25--35.
#' @examples R plot(this.ensemble, period="calibration") plot(this.ensemble, period="test")
#'
#' @export
setMethod(
          f="plot",
          signature="FDatFitLogit",
          definition=function(x, y=NULL, period="calibration", ...){
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
              separationplot(pred=as.vector(.pred[,i]), actual=as.vector(.actual), heading=modelNames[i], newplot=F)
            }
          }
          )





