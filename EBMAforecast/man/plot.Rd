\name{plot}
\alias{plot}
\title{Plotting function for logistic ensemble models that have already been fit}
\arguments{
  \item{x}{An object of class "FDatFitLogit".}

  \item{y}{I don't know.}
}
\value{
  Returns a separation plot for each of the models.
}
\description{
  This function creates separation plots for each of the
  fitted models, including the EBMA model. Observations are
  ordered from left to right with increasing predicted
  probabilities, which is depicted by the black line.
  Actual occurrences are displayed by red vertical lines.
  Plots can be dislayed for the test or calibration period.
}
\examples{
R plot(this.ensemble, period="calibration") plot(this.ensemble, period="test")
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

  Greenhill, B., M.D. Ward, A. Sacks. (2011). The
  Separation Plot: A New Visual Method For Evaluating the
  Fit of Binary Data. \emph{American Journal of Political
  Science}.\bold{55}: 991--1002.

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

