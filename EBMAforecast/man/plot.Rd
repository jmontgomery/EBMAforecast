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
\author{
  Michael D. Ward and Jacob M. Montgomery
}
\references{
  Montgomery, Jacob M., Florian M. Hollenbach and Michael
  D. Ward. (2012). Improving Predictions Using Ensemble
  Bayesian Model Averaging. \emph{Political Analysis}.
  Forthcoming.
}

