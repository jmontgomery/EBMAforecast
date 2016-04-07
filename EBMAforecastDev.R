library(devtools); library(roxygen2); library(testthat)

setwd("~/Documents/GitHub/EBMAforecast1/rcpp_pack")

## Only need to run this portion once
# update_collate("EBMAforecast")

current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

# build(current.code, path="~/github/EBMAforecast/rcpp_pack/")
# install.packages("~/Desktop/EBMAforecast_0.53.tar.gz", repos = NULL, type="source")

## run all tests to make sure everything is working as expected, testfile needs package installed, so that data is available for tests
test_file("testhat.R")

# Check that the package is constructed correctly
check(current.code, args="--as-cran")
revdep_check(current.code)
build_win(current.code)

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
