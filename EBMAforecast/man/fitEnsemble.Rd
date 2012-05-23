\name{fitEnsemble}
\alias{fitEnsemble}
\title{Function for fitting an EBMA model based on the calibration dataset}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'
  that will be used to calibrate the model}

  \item{exp}{The exponential shrinkage term. Forecasts are
  raised to the (1/exp) power on the logit scale for the
  purposes of bias reduction.  The default value is
  \code{exp=3}.}

  \item{tol}{Tolerance for improvements in the
  log-likelihood before the EM algorithm will stop
  optimization.  The default is \code{tol= 0.01}, which is
  somewhat high.  Researchers may wish to reduce this by an
  order of magnitude for final model estimation.}

  \item{maxIter}{The maximum number of iterations the EM
  algorithm will run before stopping automatically.}

  \item{method}{The estimation method used.  Currently only
  implements "EM"}

  \item{...}{Not implemented}
}
\value{
  A data object of the class 'FDatFitLogit'
}
\description{
  This function calculates out-of-sample forecasts on the
  predicted probability scale for the ensemble model.
  Inputs include an object of class \code{ForecastData}
  that includes the calibrated ensemble model generated
  from component forecasts.
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

