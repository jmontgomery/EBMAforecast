\name{makeForecastData}
\alias{makeForecastData}
\title{Build a ensemble forecasting data object}
\arguments{
  \item{.predAll}{An n by p matrix of data.frame containing
  predictions for both the calibration and test
  observations}

  \item{.outcomeAll}{description}

  \item{.inOut}{A dichotomous vector of length, where 1
  indicates the observation is in the test sample}

  \item{.predCalibration}{A dichotomous vector of length,
  where 1 indicates the observation is in the test sample}

  \item{.predTest}{A dichotomous vector of length, where 1
  indicates the observation is in the test sample}

  \item{.outcomeCalibration}{A dichotomous vector of
  length, where 1 indicates the observation is in the test
  sample}

  \item{.outcomeTest}{A dichotomous vector of length, where
  1 indicates the observation is in the test sample}

  \item{.modelNames}{A dichotomous vector of length, where
  1 indicates the observation is in the test sample}

  \item{...}{Additional arguments not implemented}
}
\value{
  A data object of the class 'ForecastData' with the
  following slots: \n \item{slot1}{Description of slot 1}
  /n \item{slot2}{Description of slot 2}
}
\description{
  The description goes here
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

