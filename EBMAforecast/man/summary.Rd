\name{summary}
\alias{summary}
\title{Function for summarizing an ensemble that has already been fit}
\arguments{
  \item{object}{An object of class "FDatFitLogit"}

  \item{period}{"calibration" or "test"}

  \item{fitStatistics}{A vector naming statistics that
  should be calculated.  Possible values include "auc",
  "brier", "percCorrect", "pre"}

  \item{threshold}{The threshold used to calculate when a
  "positive" prediction is made by the model}

  \item{baseModel}{Vector containing predictions used to
  calculate proportional reduction of error ("pre")}

  \item{showCoefs}{A logical indicating whether model
  ceofficients from the ensemble should be shown.}

  \item{...}{Not implemented}
}
\description{
  Description goes here
}

