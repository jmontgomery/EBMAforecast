library(devtools)
library(roxygen2)
library(testthat)


#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

load("/Users/jmontgomery/Github/EBMAforecast/EBMAforecast/data/calibrationSample.rda")
load("/Users/jmontgomery/Github/EBMAforecast/EBMAforecast/data/testSample.rda")

calibrationSample[40, 2] <- calibrationSample[400, 3] <- calibrationSample[12, 1] <- NA
testSample[50,2] <- calibrationSample[100, 3] <- calibrationSample[200, 1] <- NA

calibrationSample <- cbind(calibrationSample, calibrationSample[,"Insurgency"]*.96+.01)
colnames(calibrationSample) <- c(colnames(calibrationSample)[1:4], "trial")

this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM", "trial")],
                                      .outcomeCalibration=calibrationSample[,"Insurgency"])
                                      #.predTest=testSample[,c("LMER", "SAE", "GLM")],
                                     .#outcomeTest=testSample[,"Insurgency"],
#                                      .modelNames=c("LMER", "SAE", "GLM", "))

jacob <- calibrateEnsemble(this.ForecastData, model="logit", tol=.001)



# run all tests to make sure everything is working as expected
test_file("test_start.R")

# Check that the package is constructed correctly
check(current.code)

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

# Note: Can use use promptClass(), promptMethods() to write skelletons for specific items

# once we are all ready, we submit to cran
#release(current.code, check=FALSE)
