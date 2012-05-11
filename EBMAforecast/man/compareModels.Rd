\name{compareModels}
\alias{compareModels}
\title{Function for comparing multiple models based on performance}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'}

  \item{period}{Can take value of "calibration" or "test"
  and indicates period for which statistics should be
  calculated}

  \item{comparisons}{A vector naming statistics that should
  be calculated.  Possible values include "auc", "brier",
  "percCorrect", "pre"}

  \item{threshold}{The threshold used to calculate when a
  "positive" prediction is made by the model}

  \item{baseModel}{Vector containing predictions used to
  calculate proportional reduction of error ("pre")}

  \item{...}{Not implemented}
}
\value{
  A data object of the class 'CompareModels'
}
\description{
  The description goes here `
}
\author{
  Michael D. Ward and Jacob M. Montgomery
}
\references{
  Montgomery, Hollenbach, and Ward (2012). etc.
}
\seealso{
  ensembleBMA, other functions
}

