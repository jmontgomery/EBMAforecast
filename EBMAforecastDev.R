library(devtools); library(roxygen2); library(testthat)

setwd("~/Documents/GitHub/EBMAforecast1/rcpp_pack")
#setwd("~/GITHUB/EBMAforecast/")

## Only need to run this portion once
update_collate("EBMAforecast")

current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code, clean=FALSE)

## run all tests to make sure everything is working as expected, testfile needs package installed, so that data is available for tests
test_file("testhat.R")

# Check that the package is constructed correctly
check(current.code, args="--as-cran")

# Check demo
demo(EBMAforecast)
demo(presForecast)
W
# take a look at the help files
help(EBMAforecast)
help(makeForecastData)
help(calibrateEnsemble)
help(compareModels)
help(ForecastData)
help(summary, package="EBMAforecast")
help(plot, package="EBMAforecast")
help(calibrationSample)
help(testSample)
help(presidentialForecast)

# Note: Can use use promptClass(), promptMethods() to write skelletons for specific items

# once we are all ready, we submit to cran
#release(current.code, check=FALSE)
