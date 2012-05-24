\name{compareModels}
\alias{compareModels}
\title{Function for comparing multiple models based on predictive performance}
\arguments{
  \item{.forecastData}{An object of class 'ForecastData'.}

  \item{.period}{Can take value of "calibration" or "test"
  and indicates period for which statistics should be
  calculated.}

  \item{.fitStatistics}{A vector naming statistics that
  should be calculated.  Possible values include "auc",
  "brier", "percCorrect", "pre".}

  \item{.threshold}{The threshold used to calculate when a
  "positive" prediction is made by the model.}

  \item{.baseModel}{Vector containing predictions used to
  calculate proportional reduction of error ("pre").}

  \item{...}{Not implemented}
}
\value{
  A data object of the class 'CompareModels'
}
\description{
  This function produces statistics to compare the
  predictive performance of the different models in
  included as well as for the EBMA model.
}
\examples{
R compareModels(this.ensemble,"test") compareModels(this.ensemble,"calibration")
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

