\name{EBMAforecast-package}
\alias{EBMAforecast-package}
\alias{EBMAforecast}
\docType{package}
\title{
 Ensemble BMA For Binary Dependent Variables 
}
\description{
The EBMAforecast package (currently under development) allows users to increase the accuracy of forecasting models for binary outcomes by pooling multiple component forecasts to generate ensemble forecasts. It includes functions to fit an ensemble Bayesian model averaging (EBMA) model using in-sample predictions, generate ensemble out-of-sample predictions, and create useful data visualizations. \cr
\cr
Try \code{demo(EBMAforecast)} for an example.
}
\details{
\tabular{ll}{
Package: \tab EBMAforecast\cr
Type: \tab Package\cr
Version: \tab 0.2\cr
Date: \tab 2011-06-2\cr
LazyLoad: \tab yes\cr
}
The EBMAforecast package allows the user to generate Ensemble BMA models from different component models for dichotomous dependent variables. The following functions are included in the package:\cr
\cr
\code{\link{Insample}} : In-Sample predictions and observed outcomes for insurgency for our example dataset.\cr
\cr
\code{\link{Outsample}} : Out-of-Sample predictions of the component models and observed outcomes for our example.\cr
\cr
\code{\link{Ensemble.logit}} : Fits the Ensemble BMA model for dichotomous dependent variables.\cr
\cr
\code{\link{predict.Ensemble.logit}} : Generates out-of-sample predictions for the Ensemble BMA model and calculates model fit statistics to facilitate comparison.
}
\author{
Michael D. Ward and Jacob Montgomery <jacob.montgomery@duke.edu>
}
\references{
Ward, M. D., J. M. Montgomery and F. M. Hollenbach. 2011 Improving Conflict Predictions Using Ensemble Bayesian Model Averaging.  Paper presented at the 2011 meeting of the International Studies Association in Montreal, Quebec.

Raftery, A. E., T. Gneiting, F. Balabdaoui and M. Polakowski. 2005 Using Bayesian Model Averaging to calibrate forecast ensembles, \emph{Monthly Weather Review} \bold{133}:1155--1174.

Sloughter, J. M., A. E. Raftery, T. Gneiting and C. Fraley. 2007 Probabilistic quantitative precipitation forecasting using Bayesian model averaging, \emph{Monthly Weather Review} \bold{135}:3209--3220.

Fraley, C., A. E. Raftery, T. Gneiting, 2010 Calibrating Multi-Model Forecast Ensembles with Exchangeable and Missing Members using Bayesian Model Averaging, \emph{Monthly Weather Review} \bold{138}:190--202.

Sloughter, J. M., T. Gneiting and A. E. Raftery, 2010 Probabilistic wind speed forecasting using ensembles and Bayesian model averaging, \emph{Journal of the American Statistical Association}, \bold{105}:25--35.
}
\keyword{ package }
\seealso{
\code{\link{Ensemble.logit}}, \code{\link{predict.Ensemble.logit}}, \code{\link{Insample}}, \code{\link{Outsample}}
}
\examples{
demo(EBMAforecast)


}
