library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

# run all tests to make sure everything is working as expected
test_file("test_start.R")

# Check that the package is constructed correctly
check(current.code)

## you can install to run the demo and see help files
install(current.code)

# Once it's installed, you can look at the demo
library(EBMAforecast)
demo(EBMAforecast)
demo(presForecast)

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
