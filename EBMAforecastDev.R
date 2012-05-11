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
ind <- c(rep(0,60), rep(1,40))



jacob <- makeForecastData(.outcomeAll=fake.data1[,1], .predAll=as.data.frame(fake.data2), .inOut=ind)
jacob


new.dat1 <- matrix(runif(1000), nrow=100, ncol=10)
new.dat2 <- matrix(rbinom(100, 1, .5), ncol=1)
jacob <- makeForecastData(.predCalibration=new.dat1, .outcomeCalibration=new.dat2, .predTest=new.dat1, .modelNames="blahBlah")
jacob

jacob2 <- calibrateEnsemble(jacob, model="logit", exp=2)
jacob2
jacob2@predTest-jacob2@predCalibration
new("FDatFitLogit")


new("CompareModels")

compareModels(jacob2)

matrix(NA, nrow=20, ncol=10)[,1]

my.fun <- function(x){somers2(x, y)[1]}
y <- new.dat2
preds <- new.dat1
aaply(new.dat1, 2,.fun=my.fun, .expand=TRUE)
  

x <- matrix(1:6, ncol=2)
y <- matrix(1, nrow=3)
x
y

colSums(x-1)
