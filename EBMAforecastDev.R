library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GITHUB/EBMAforecast/")
#setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
jacob <- calibrateEnsemble(.forecastData=this.ForecastData2, model="normal", tol=1.490116e-08, maxIter=1000000)

.tester <- new("ForecastData")
str(tester)
print(tester)
tester
tester <- makeForecastData()
str(tester)
print(tester)
tester




this.ForecastData@predCalibration[2,1,1] <- NA
this.ForecastData@predCalibration[8,4,1] <- NA
this.ForecastData@predCalibration
jacob <- calibrateEnsemble(this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000)
jacob@modelWeights


jacob2<- calibrateEnsemble(this.ForecastData, model="normal", tol=1.490116e-08, maxIter=1000000)
f2+2
### TODO:

## Tests I want added
## 1) The funciton should behave differently when we change the tol and maxIter options

## Bugs we found:
## 1) THe tolerance and maxIter options were not working as documentations suggested.

## Bugs to track down -- I am getting an error in the "show" function for ForecastData for the presidential example.

## Functionality to 


###

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
