#' Calibration sample data
#'
#' This includes the calibration-sample data for the international conflict forecasting example in Montgomery, Hollenbach and Ward (2012). It provides the predictions for the three models included in the Ensemble models, as well as the true values of the dependent variable for insurgency in 29 Asian countries. The calibration sample ranges ranges from January 2008 to December 2009. 
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#' @name calibrationSample
#' @docType data
NULL

#' Test sample data
#'
#' This includes the test-sample data for the international conflict forecasting example in Montgomery, Hollenbach and Ward (2012). It provides the predictions for the three models included in the Ensemble models, as well as the true values of the dependent variable for insurgency in 29 Asian countries. The test sample ranges ranges from January 2010 to December 2010.  

#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming.
#'
#' @name testSample
#' @docType data
NULL

#' EBMAforecast
#'
#' The EBMAforecast package (currently under development) allows users to increase the accuracy of forecasting models by pooling multiple component forecasts to generate ensemble forecasts. It includes functions to fit an ensemble Bayesian model averaging (EBMA) model using in-sample predictions, generate ensemble out-of-sample predictions, and create useful data visualizations
#'
#' @name EBMAforecast
#' @docType package
#' @author  Michael D. Ward <\link{michael.d.ward@@duke.edu}> and Jacob M. Montgomery <\link{jacob.montgomery@@wustl.edu}>
#'
#' @references Montgomery, Jacob M., Florian M. Hollenbach and Michael D. Ward. (2012). Improving Predictions Using Ensemble Bayesian Model Averaging. \emph{Political Analysis}. Forthcoming. 
#'
#' @references Raftery, A. E., T. Gneiting, F. Balabdaoui and M. Polakowski. (2005). Using Bayesian Model Averaging to calibrate forecast ensembles. \emph{Monthly Weather Review}. \bold{133}:1155--1174.
#' @references Sloughter, J. M., A. E. Raftery, T. Gneiting and C. Fraley. (2007). Probabilistic quantitative precipitation forecasting using Bayesian model averaging. \emph{Monthly Weather Review}. \bold{135}:3209--3220.
#' @references Fraley, C., A. E. Raftery, T. Gneiting. (2010). Calibrating Multi-Model Forecast Ensembles with Exchangeable and Missing Members using Bayesian Model Averaging. \emph{Monthly Weather Review}. \bold{138}:190--202.
#' @references Sloughter, J. M., T. Gneiting and A. E. Raftery. (2010). Probabilistic wind speed forecasting using ensembles and Bayesian model averaging. \emph{Journal of the American Statistical Association}. \bold{105}:25--35.
#' @examples demo(EBMAforecast)
NULL
