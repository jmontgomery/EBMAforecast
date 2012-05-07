library(devtools)
library(roxygen2)
library(testthat)
library(plyr)
library(ensembleBMA)
library(separationplot)



current.code <- as.package("EBMAforecast")
load_all(current.code, reset=TRUE)
document(current.code)
new(Class="ForecastData")
new(Class="Ensemble", maxIter=20)

fake.data1 <- matrix(rnorm(100), nrow=100, ncol=10)
fake.data2 <- fake.data1
ind <- c(rep(0,6), rep(1,4))

jacob <- makeForecastData(.outcomeAll=fake.data1, .predAll=as.data.frame(fake.data2), .inOut=ind)



