library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GITHUB/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

jacob2 <- calibrateEnsemble(.forecastData=this.ForecastData2, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=TRUE)
jacob <- calibrateEnsemble(.forecastData=this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE)
summary(jacob, showCoefs=TRUE)
jacob@predTest-jacob@outcomeTest
jacob@modelParams

sum(jacob@modelWeights)
print(jacob)
jacob@modelWeights
jacob2@modelWeights
j.forecastData <- this.ForecastData

.tester <- new("ForecastData")
str(tester)
print(tester)
tester
tester <- makeForecastData()
str(tester)
print(tester)
tester



this.ForecastData3 <- this.ForecastData
this.ForecastData3@predCalibration[2,1,1] <- NA
this.ForecastData3@predCalibration[8,4,1] <- NA
this.ForecastData3@predCalibration
jacob3 <- calibrateEnsemble(this.ForecastData3, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=TRUE)


this.ForecastData4 <- this.ForecastData2
this.ForecastData4@predCalibration[2,1,1] <- NA
this.ForecastData4@predCalibration[8,4,1] <- NA
this.ForecastData4@predCalibration[,5,2] <- NA
print(this.ForecastData4@predCalibration)
jacob4 <- calibrateEnsemble(this.ForecastData4, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE)

this.ForecastData5 <- this.ForecastData2
this.ForecastData5@predCalibration[2,1,1] <- NA
this.ForecastData5@predCalibration[8,4,1] <- NA
print(this.ForecastData5@predCalibration)
jacob5 <- calibrateEnsemble(this.ForecastData5, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE)


jacob@modelWeights
jacob2@modelWeights
jacob3@modelWeights
jacob4@modelWeights
jacob5@modelWeights


# run all tests to make sure everything is working as expected
test_file("test_start.R")

# Check that the package is constructed correctly
check(current.code)

###
## you can install to run the demo and see help files
install(current.code)

# Once it's installed, you can look at the demo
library(EBMAforecast)
demo(EBMAforecast)




# take a look at the help files
help(EBMAforecast)
help(makeForecastData)
help(calibrateEnsemble)
help(compareModels)
help(summary, package="EBMAforecast")
help(plot, package="EBMAforecast")
help(calibrationSample)
help(testSample)

# Note: use promptClass(), promptMethods() to write skelletons for tspecific items

# once we are all ready, we submit to cran
release(current.code, check=FALSE)
