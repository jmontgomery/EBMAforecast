library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GITHUB/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
plot(nonMissingFixed, subset=14, main=c("2004 Election"), xLab="Bush Vote Share", cols=rep("gray20", 6))

this.ForecastData3 <- this.ForecastData
this.ForecastData3@predCalibration[2,1,1] <- NA
this.ForecastData3@predCalibration[8,4,1] <- NA
this.ForecastData3@predCalibration


nonMissingFixed <- calibrateEnsemble(.forecastData=this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE)
nonMissingUnfixed <- calibrateEnsemble(.forecastData=this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=TRUE)
missingFixed <- calibrateEnsemble(this.ForecastData3, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE)
missingUnfixed <- calibrateEnsemble(this.ForecastData3, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=TRUE)

nonMissingFixedMed <- calibrateEnsemble(.forecastData=this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000,
                                     useModelParams=FALSE, predType="posteriorMedian")
summary(nonMissingFixedMed)
missingFixedMed <- calibrateEnsemble(this.ForecastData3, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian")
summary(missingFixedMed)

summary(nonMissingFixed, showCoefs=TRUE)
summary(nonMissingUnfixed, showCoefs=TRUE)
summary(missingFixed, showCoefs=TRUE)
summary(missingUnfixed, showCoefs=TRUE)

summary(nonMissingFixed, showCoefs=TRUE, period="test")
summary(nonMissingUnfixed, showCoefs=TRUE, period="test")
summary(missingFixed, showCoefs=TRUE, period="test")
summary(missingUnfixed, showCoefs=TRUE, period="test")


print(nonMissingFixed)
print(nonMissingUnfixed)
print(missingFixed)
print(missingUnfixed)

(nonMissingFixed)
(nonMissingUnfixed)
(missingFixed)
(missingUnfixed)



plot(nonMissingFixed, subset=14, main="2004 Election", xLab="Bush Vote Share", cols=rep("gray20", 6))
plot(nonMissingFixed, main="2008 Election", xLab="Bush Vote Share", cols=rep("gray40", 6), period="test")
plot(nonMissingUnfixed, subset=14, main="2004 Election", xLab="Bush Vote Share", cols=rep("gray", 6))
plot(nonMissingUnfixed, main="2008 Election", xLab="Bush Vote Share", cols=rep("gray40", 6), period="test")
plot(missingFixed, subset=14, main="2004 Election", xLab="Bush Vote Share", cols=rep("gray", 6))
plot(missingFixed, main="2008 Election", xLab="Bush Vote Share", cols=rep("gray40", 6), period="test")
plot(missingFixed, subset=14, main="2004 Election", xLab="Bush Vote Share", cols=rep("gray", 6))
plot(missingFixed, main="2008 Election", xLab="Bush Vote Share", cols=rep("gray40", 6), period="test")


plot(nonMissingUnfixed)
plot(missingFixed)
plot(missingUnfixed)



# FOR FLO: We need to be able to make "empty" elements of all classes.  
.tester <- new("ForecastData")
str(tester)
print(tester)
tester
tester <- makeForecastData()
str(tester)
print(tester)
tester





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
