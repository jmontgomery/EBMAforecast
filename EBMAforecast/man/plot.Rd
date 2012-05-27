\name{plot}
\alias{plot}
\title{Plotting function for logistic ensemble models that have already been fit}
\arguments{
  \item{x}{An object of class "FDatFitLogit".}

  \item{period}{Can take value of "calibration" or "test"
  and indicates the period for which the plots should be
  produced.}
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
}

