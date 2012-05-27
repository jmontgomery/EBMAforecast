##

#' @export
setClass(Class="SummaryForecastData",
         representation=representation(
           summaryData="matrix"        
           ),
         prototype=prototype(
           summaryData=matrix(NA, nrow=0, ncol=0)
           ),
         )

##
#' Summary Function
#'
#' This function summarizes the Ensemble models that have been fit previously by the user
#'
#' @param object An object of class "FDatFitLogit"
#' @param period The period for which the summary should be provided, either "calibration" or "test".
#' @param fitStatistics A vector naming statistics that should be calculated.  Possible values include "auc", "brier", "percCorrect", "pre". 
#' @param threshold The threshold used to calculate when a "positive" prediction is made by the model.
#' @param baseModel Vector containing predictions used to calculate proportional reduction of error ("pre").
#' @param showCoefs A logical indicating whether model ceofficients from the ensemble should be shown.
#' @param ... Not implemented
#' @method summary FDatFitLogit
#' 
#' @author  Michael D. Ward <\link{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\link{jacob.montgomery@@wustl.edu}>
#'
#' @examples R summary(this.ensemble, period="calibration") summary(this.ensemble, period="test",showCoefs=FALSE)
#' @export
setMethod(
          f="summary",
          signature="FDatFitLogit",
          definition=function(object,
            period="calibration",
            fitStatistics=c("brier", "auc", "perCorrect", "pre"),
            threshold=.5,
            baseModel=0,
            showCoefs=TRUE,
            ...){
            out <- compareModels(object, .period=period, .fitStatistics=fitStatistics, .threshold=threshold, .baseModel=baseModel)
            if(showCoefs){
              coefs <- object@modelParams
              coefs <- rbind(c(NA,NA), coefs)
              out <- cbind(coefs, out)
            }
            # Adding weights column
            W <- object@modelWeights
            W <- c(NA, W)
            out <- cbind(W, out)

            rownames(out) <- c("EBMA", object@modelNames)
            new("SummaryForecastData", summaryData=out)
              }
            )


        
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


