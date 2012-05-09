\name{calibrateEnsemble}
\alias{calibrateEnsemble}
\title{Calibrate and ensemble Bayesian Model Averaging model}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'
  that will be used to calibrate the model}

  \item{exp}{The exponent}

  \item{tol}{The tolerance for the EM algorithm}

  \item{maxIter}{The number of iterations}

  \item{model}{The type of data it is (i.e., normal,
  binary, etc.)}

  \item{method}{The estimation method used.  Currently only
  implements "EM"}

  \item{...}{Not implemented}
}
\value{
  Returns a data of class 'Ensemble'
}
\description{
  Calibrate an EBMA model based on out-of-sample
  performance in the calibration time period
}
\author{
  Michael D. Ward and Jacob M. Montgomery
}
\references{
  Montgomery, Hollenbach, and Ward (2012), etc.
}

