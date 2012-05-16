##
#' Function for summarizing an ensemble that has already been fit
#'
#' Description goes here
#'
#' @param .ensemble An object of class "FDatFitLogit"
#' @param .period "calibration" or "test"
#' @param comparisons A vector naming statistics that should be calculated.  Possible values include "auc", "brier", "percCorrect", "pre" 
#' @param threshold The threshold used to calculate when a "positive" prediction is made by the model
#' @param baseModel Vector containing predictions used to calculate proportional reduction of error ("pre")
#' @param showCoefs A logical indicating whether model ceofficients from the ensemble should be shown.
#' @param ... Not implemented
#' @export

