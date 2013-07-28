
#' @export
setClass(Class="CompareModels",
         representation = representation(
           fitStatistics="matrix",
           period="character",
           threshold="numeric",
           baseModel="numeric"),
         prototype=prototype(
           fitStatistics=matrix(NA, nrow=0, ncol=0),
           period=character(),
           threshold=numeric(),
           baseModel=numeric()
           ),
         validity=function(object){
           if(object@period!="test" & object@period!="calibration"){
             stop("Period must either be for 'calibration' or 'test'")
           }
         }
         )

##
#' Function for comparing multiple models based on predictive performance
#'
#' This function produces statistics to compare the predictive performance of the different models component models, as well as for the EBMA model itself, for either the calibration or the test period. It currently calculates the area under the ROC (\code{auc}), the \code{brier} score, the percent of observations predicted correctly (\code{percCorrect}), as well as the proportional reduction in error compared to some baseline model (\code{pre}) for binary models. For models with normally distributed outcomes the \code{CompareModels} function can be used to calculate the root mean squared error (\code{rmse}) as well as the mean absolute error (\code{mae}).
#'
#' @param .forecastData An object of class 'ForecastData'. 
#' @param .period Can take value of "calibration" or "test" and indicates the period for which the test statistics should be calculated.
#' @param .fitStatistics A vector naming statistics that should be calculated.  Possible values include "auc", "brier", "percCorrect", "pre" for logit models and "mae","rsme" for normal models.  ### WANTS TO ADD MORE FIT STATS ###, and the new script sent includes cbind(mae, rmse, mad, rmsle, mape, meape, mrae, pw)
#' @param .threshold The threshold used to calculate when a "positive" prediction is made by the model for binary dependent variables.
#' @param .baseModel Vector containing predictions used to calculate proportional reduction of error ("pre").
#' @param ... Not implemented
#'
#' @return A data object of the class 'CompareModels' with the following slots:
#' \item{fitStatistics}{The output of the fit statistics for each model.}
#' \item{period}{The period, "calibration" or "test", for which the statistics were calculated.}
#' \item{threshold}{The threshold used to calculate when a "positive" prediction is made by the model.}
#' \item{baseModel}{Vector containing predictions used to calculate proportional reduction of error ("pre").}
#'
#' @author  Michael D. Ward <\email{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\email{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. \bold{20}: 271-291.
#'
#' 
#' @examples \dontrun{data(calibrationSample)
#' 
#' data(testSample) 
#' 
#' this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
#' .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
#' .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
#' 
#' this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001, exp=3)
#' 
#' compareModels(this.ensemble,"calibration")
#' 
#' compareModels(this.ensemble,"test") 
#'}
#'
#' @seealso ensembleBMA, other functions
#' @aliases compareModels,ForecastData-method CompareModels-class
#' @export
setGeneric(name="compareModels",
           def=function(.forecastData,
             .period="calibration",
             .fitStatistics=c("brier", "auc", "perCorrect", "pre"), #Normal tests here or default logit?
             .threshold=.5,
             .baseModel=0, #Does this need to be included for mrae and pw?
             ...)
           {standardGeneric("compareModels")}
           )




#' @export
setMethod(f="compareModels",
          signature(.forecastData="ForecastData"),
          definition=function(.forecastData, .period, .fitStatistics, .threshold, .baseModel)
          {
            if(.period == "calibration")
              {
                preds <- aaply(.forecastData@predCalibration,c(1:2),mean)  #preds A matrix containing the predictions of all component models and the EBMA model for all observations in the calibration period
                y <- .forecastData@outcomeCalibration #y  A vector containing the true values of the dependent variable for all observations in the calibration period
              }
            if(.period=="test") #Similar to above but for test period instead
              {
                preds <-  aaply(.forecastData@predTest,c(1:2),mean)
                y <- .forecastData@outcomeTest
              }


            num.models <- ncol(preds)
            num.obs <- nrow(preds)

	    #Begin catches for calling normal stat on logit data
		##IS THERE A BETTER WAY IN R TO DEAL WITH ERRORS THAN IF STATEMENTS?  There should be a way to shorten this a lot...dictionary/list that inserts test name that fails ##
            if(class(.forecastData)[1]=="FDatFitLogit" & "rmse" %in% .fitStatistics){
            	warning("RMSE statistics should not be calculated for models with binary outcomes. Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "mae" %in% .fitStatistics){
            	warning("MAE statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "mad" %in% .fitStatistics){
            	warning("MAD statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "rmsle" %in% .fitStatistics){
            	warning("RMSLE statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "meape" %in% .fitStatistics){
            	warning("MEAPE statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "mrae" %in% .fitStatistics){
            	warning("MRAE statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }

	    if(class(.forecastData)[1]=="FDatFitLogit" & "pw" %in% .fitStatistics){
            	warning("PW statistics should not be calculated for models with binary outcomes.Use options brier, auc, pre, or perCorrect.")	
            }
            
	#Begin catches for calling logit stat on normal data - ##clean up error message##

             if(class(.forecastData)[1]=="FDatFitNormal" & "brier" %in% .fitStatistics){
            	warning("Brier scores should not be calculated for models with continuous dependent variables. Use options mae, or rmse.")	
            }
            
             if(class(.forecastData)[1]=="FDatFitNormal" & "auc" %in% .fitStatistics){
            	warning("AUC scores should not be calculated for models with continuous dependent variables. Use options mae, or rmse.")	
            }
            
             if(class(.forecastData)[1]=="FDatFitNormal" & "pre" %in% .fitStatistics){
            	warning("PRE statistics should not be calculated for models with continuous dependent variables.  Use options mae, or rmse.")	
            }
            
             if(class(.forecastData)[1]=="FDatFitNormal" & "perCorrect" %in% .fitStatistics){
            	warning("Percent Correct should not be calculated for models with continuous dependent variables.  Use options mae, or rmse.")	
            }
            
            #Error response if less than two observations  
            if(length(y)<=1){

              out <- new("CompareModels",
                         period=.period,
                         threshold=.threshold,
                         baseModel=.baseModel
                         )
              warning ("Fit statistics cannot be calculated for one observation.")
              outMat <- matrix(NA, nrow=length(preds), ncol=length(.fitStatistics))
                               
            } else {
            
            #If base has a single value, make it as long as the number of observations
            if(length(.baseModel)==1){baseModel <- rep(.baseModel, num.obs)}


            
            out <- new("CompareModels",                       
                       period=.period,
                       threshold=.threshold,
                       baseModel=.baseModel
                       )
            outMat <- matrix(NA, nrow=num.models, ncol=length(.fitStatistics))
            colnames(outMat) <- .fitStatistics


	    #Logit vals
            
            if("brier" %in%.fitStatistics & class(.forecastData)[1]=="FDatFitLogit"){
              my.fun <- function(x){mean((x-y)^2, na.rm=TRUE)} #What is y here? - True vals of dep vari
              outMat[,"brier"] <-aaply(preds, 2,.fun=my.fun, .expand=TRUE)
            }

            if("auc" %in% .fitStatistics & class(.forecastData)[1]=="FDatFitLogit"){
              my.fun <- function(x){Hmisc::somers2(x, y)[1]}
              outMat[,"auc"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)
	    }

            if("perCorrect" %in% .fitStatistics){
              my.fun <- function(x){mean((x>.threshold)*y + (x<.threshold)*(1-y), na.rm=TRUE)}
              outMat[,"perCorrect"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)
            }

            if("pre" %in% .fitStatistics & class(.forecastData)[1]=="FDatFitLogit") {
              my.fun <- function(x){
                .miss <- is.na(x)
                .nObsThis <- sum(!.miss)
                .baseModelThis <- baseModel[!.miss]
                .xThis <- x[!.miss]
                .yThis <- y[!.miss]
                num.wrong <- .nObsThis-sum((.xThis>.threshold)*.yThis + (.xThis<.threshold)*(1-.yThis))
                baseline.wrong <- .nObsThis-sum(.baseModelThis==.yThis)
                (baseline.wrong - num.wrong)/baseline.wrong
              }
              outMat[,"pre"] <- aaply(preds, 2,.fun=my.fun, .expand=TRUE)
            }


	    # Normal vals  

	    if ( class(.forecastData)[1]=="FDatFitNormal") {
	   #	  .absErr <- abs(.thisForecastMatrix-.thisOutcome)      preds = .thisForecastMatrix, y = .thisOutcome ? - this is how it was written in AddFitMetrics.R (have later for reference)
  	   #	  .sqrErr <- .absErr^2
  	   #	  .ape <- .absErr/abs(.thisOutcome) # absolute percent error

		.absErr <- abs(preds - y)
		.sqrErr <- .absErr^2
		.ape <- absErr/abs(y)


		  ## Root mean squared error
            	  if("rmse" %in% .fitStatistics){
              	     my.fun <- function(x) {sqrt(mean((x-y)^2, na.rm=TRUE))}         #.sqrErr meaned, which is faster?
                     outMat[,"rmse"] <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
                  }

		  ## Mean absolute errror
                 if("mae" %in% .fitStatistics){
                     my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}		     #.absErr meaned
                     outMat[,"mae"] <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
                 }

	    #New functions:

  		## Root mean Squared logarithmic error

	        if("rmsle" %in% .fitStatistics){
              	    my.fun <- function(x, y) { mean((log(abs(x)+1)-log(abs(y)+1))^2, na.rm=TRUE)}
                    outMat[,"rmsle"] <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
                }

		## Median absolute deviation
		if("mad" %in% .fitStatistics){
 		outMat[,"mad"] <- aaply(.absErr, 2, quantile, probs=.5, na.rm=TRUE, .expand=TRUE)  #What is quantile? Is it defined elsewhere?
              	    #my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}
                    #outMat[,"mad"] <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
                }
            

		## mean absolute percentage error
		  #mape <- colMeans(.ape, na.rm=TRUE)*100
	        if("mape" %in% .fitStatistics){
                    outMat[,"mape"] <- colMeans(.ape, na.rm=TRUE)*100
                }

	 	##median absolute percentage error
		  #  meape <-  apply(.ape, 2, quantile, prob=.5, na.rm=TRUE)*100
	        if("meape" %in% .fitStatistics){
                    outMat[,"meape"] <- apply(.ape, 2, quantile, prob=.5, na.rm=TRUE)*100
                }

		## THESE NEED a baseModel for comparison - throw an error if these are included but no baseline?
		if (.baseModel != 0) {
			#.eStar <- .thisOutcome-.thisBaseline for mrae and pw
  	   		#.e <- .thisOutcome-.thisForecastMatrix	

  			.eStar <- y-.baseModel    #WHAT is .thisBaseline? .baseModel param?
  			.e <- preds - y

			##median relative absolute error
			  #    mrae <- apply(abs(.e/.eStar), 2, quantile, probs=.5, na.rm=TRUE)
	        	if("mrae" %in% .fitStatistics){
                	    outMat[,"mrae"] <- apply(abs(.e/.eStar), 2, quantile, probs=.5, na.rm=TRUE)
                	}

			##percent worse
			  #    pw <- colMeans(abs(.e)>abs(.eStar), na.rm =TRUE)*100
	        	if("pw" %in% .fitStatistics){
                	    outMat[,"pw"] <- colMeans(abs(.e)>abs(.eStar), na.rm =TRUE)*100
                	}

  		}
     	    }


            ### NOTE: Make sure all of the above options work with missing values.  Also, if only work for one kind of data, throw an error
            rownames(outMat) <- colnames(preds)            
          }
        out@fitStatistics <- outMat
        return(out)

        }
)

