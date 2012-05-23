\name{compareModels}
\alias{compareModels}
\title{Function for comparing multiple models based on predictive performance}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'.}

  \item{period}{Can take value of "calibration" or "test"
  and indicates period for which statistics should be
  calculated.}

  \item{comparisons}{A vector naming statistics that should
  be calculated.  Possible values include "auc", "brier",
  "percCorrect", "pre".}

  \item{threshold}{The threshold used to calculate when a
  "positive" prediction is made by the model.}

  \item{baseModel}{Vector containing predictions used to
  calculate proportional reduction of error ("pre").}

  \item{...}{Not implemented}
}
\value{
  A data object of the class 'CompareModels'
}
\description{
  This function produces a table with statistics to compare
  the predictive performance of the different models in
  included as well as for the EBMA model.
}
\author{
  Michael D. Ward and Jacob M. Montgomery
}
\references{
  Montgomery, Jacob M., Florian M. Hollenbach and Michael
  D. Ward. (2012). Improving Predictions Using Ensemble
  Bayesian Model Averaging. \emph{Political Analysis}.
  Forthcoming.
}
\seealso{
  ensembleBMA, other functions
}

