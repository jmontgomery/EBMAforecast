\name{fitEnsemble}
\alias{fitEnsemble}
\title{Function for actually fitting an EBMA model based on the calibration dataset}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'
  that will be used to calibrate the model}

  \item{exp}{The exponent}

  \item{tol}{The tolerance for the EM algorithm}

  \item{maxIter}{The number of iterations}

  \item{method}{The estimation method used.  Currently only
  implements "EM"}

  \item{...}{Not implemented}
}
\value{
  A data object of the class 'FDatFitLogit'
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

