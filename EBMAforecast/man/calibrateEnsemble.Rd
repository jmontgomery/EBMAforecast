\name{calibrateEnsemble}
\alias{calibrateEnsemble}
\title{Calibrate an ensemble Bayesian Model Averaging model}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'
  that will be used to calibrate the model.}

  \item{exp}{The exponential shrinkage term.  Forecasts are
  raised to the (1/exp) power on the logit scale for the
  purposes of bias reduction.  The default value is
  \code{exp=3}.}

  \item{tol}{Tolerance for improvements in the
  log-likelihood before the EM algorithm will stop
  optimization.  The default is \code{tol= 0.01}, which is
  somewhat high.  Researchers may wish to reduce this by an
  order of magnitude for final model estimation.}

  \item{maxIter}{The maximum number of iterations the EM
  algorithm will run before stopping automatically. The
  default is \code{maxIter=10000}.}

  \item{model}{The model type that should be used to the
  type of data that is being predicted (i.e., normal,
  binary, etc.)}

  \item{method}{The estimation method used.  Currently only
  implements "EM"}

  \item{...}{Not implemented}
}
\value{
  Returns a data of class 'Ensemble'
}
\description{
  This function calibrates an EBMA model based on
  out-of-sample performance in the calibration time period.
  Given a dependent variable and in-sample predictions from
  multiple component forecast models in the
  \code{ForecastData} the \code{calibrateEnsemble} function
  fits an ensemble BMA mixture model. The weights assigned
  to each model are derived from the individual model's
  performance in the calibration period.
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
\keyword{calibrate}
\keyword{EBMA}

