library(devtools)
library(roxygen2)
library(testthat)
library(plyr)
library(ensembleBMA)
library(separationplot)



current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
jacob <- new(Class="ForecastData", modelNames="blah")
as(jacob, "ForecastDataLogit")

fake.data1 <- matrix(rnorm(100), nrow=100, ncol=10)
fake.data2 <- fake.data1
ind <- c(rep(0,6), rep(1,4))

jacob <- makeForecastData(.outcomeAll=fake.data1, .predAll=as.data.frame(fake.data2), .inOut=ind)
calibrateEnsemble(jacob)


