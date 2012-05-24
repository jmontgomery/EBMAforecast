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
  from component forecasts. The function is wrapped within
  the \code{calibrateEnsemble} function.
}
\author{
  Michael D. Ward <\link{michael.d.ward@duke.edu}> and
  Jacob M. Montgomery <\link{jacob.montgomery@wustl.edu}>
}
\references{
  Montgomery, Jacob M., Florian M. Hollenbach and Michael
  D. Ward. (2012). Improving Predictions Using Ensemble
  Bayesian Model Averaging. \emph{Political Analysis}.
  Forthcoming.

  Raftery, A. E., T. Gneiting, F. Balabdaoui and M.
  Polakowski. (2005). Using Bayesian Model Averaging to
  calibrate forecast ensembles. \emph{Monthly Weather
  Review}. \bold{133}:1155--1174.

  Sloughter, J. M., A. E. Raftery, T. Gneiting and C.
  Fraley. (2007). Probabilistic quantitative precipitation
  forecasting using Bayesian model averaging. \emph{Monthly
  Weather Review}. \bold{135}:3209--3220.

  Fraley, C., A. E. Raftery, T. Gneiting. (2010).
  Calibrating Multi-Model Forecast Ensembles with
  Exchangeable and Missing Members using Bayesian Model
  Averaging. \emph{Monthly Weather Review}.
  \bold{138}:190--202.

  Sloughter, J. M., T. Gneiting and A. E. Raftery. (2010).
  Probabilistic wind speed forecasting using ensembles and
  Bayesian model averaging. \emph{Journal of the American
  Statistical Association}. \bold{105}:25--35.
}
\seealso{
  ensembleBMA, other functions
}

