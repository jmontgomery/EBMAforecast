pkgname <- "EBMAforecast"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('EBMAforecast')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("EBMAforecast")
### * EBMAforecast

flush(stderr()); flush(stdout())

### Name: EBMAforecast
### Title: EBMAforecast
### Aliases: EBMAforecast EBMAforecast-package

### ** Examples

## Not run: 
##D demo(EBMAforecast)
##D demo(presForecast)
## End(Not run)



cleanEx()
nameEx("ForecastData")
### * ForecastData

flush(stderr()); flush(stdout())

### Name: ForecastData-class
### Title: An ensemble forecasting data object
### Aliases: ForecastData-class getModelNames,ForecastData-method
###   getOutcomeCalibration,ForecastData-method
###   getOutcomeTest,ForecastData-method
###   getPredCalibration,ForecastData-method
###   getPredTest,ForecastData-method initialize,ForecastData-method
###   makeForecastData,ANY-method print,ForecastData-method
###   setModelNames,ForecastData-method setModelNames<-
###   setModelNames<-,ForecastData-method
###   setOutcomeCalibration,ForecastData-method setOutcomeCalibration<-
###   setOutcomeCalibration<-,ForecastData-method
###   setOutcomeTest,ForecastData-method setOutcomeTest<-
###   setOutcomeTest<-,ForecastData-method
###   setPredCalibration,ForecastData-method setPredCalibration<-
###   setPredCalibration<-,ForecastData-method
###   setPredTest,ForecastData-method setPredTest<-
###   setPredTest<-,ForecastData-method show,ForecastData-method

### ** Examples

## Not run: 
##D  data(calibrationSample)
##D 
##D data(testSample)
##D this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
##D .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
##D .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
##D 
##D ### to acces individual slots in the ForecastData object
##D getPredCalibration(this.ForecastData)
##D getOutcomeCalibration(this.ForecastData)
##D getPredTest(this.ForecastData)
##D getOutcomeTest(this.ForecastData)
##D getModelNames(this.ForecastData)
##D 
##D ### to assign individual slots, use set functions
##D 
##D setPredCalibration(this.ForecastData)<-calibrationSample[,c("LMER", "SAE", "GLM")]
##D setOutcomeCalibration(this.ForecastData)<-calibrationSample[,"Insurgency"]
##D setPredTest(this.ForecastData)<-testSample[,c("LMER", "SAE", "GLM")]
##D setOutcomeTest(this.ForecastData)<-testSample[,"Insurgency"]
##D setModelNames(this.ForecastData)<-c("LMER", "SAE", "GLM")
## End(Not run)



cleanEx()
nameEx("calibrateEnsemble")
### * calibrateEnsemble

flush(stderr()); flush(stdout())

### Name: calibrateEnsemble
### Title: Calibrate an ensemble Bayesian Model Averaging model
### Aliases: FDatFitLogit-class FDatFitNormal-class ForecastDataLogit-class
###   ForecastDataNormal-class calibrateEnsemble
###   calibrateEnsemble,ForecastData-method fitEnsemble
###   fitEnsemble,ForecastData-method, fitEnsemble,ForecastDataLogit-method
###   fitEnsemble,ForecastDataNormal-method
### Keywords: EBMA calibrate

### ** Examples

## Not run: 
##D data(calibrationSample)
##D 
##D data(testSample)
##D 
##D this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
##D .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
##D .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
##D 
##D this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001, exp=3)
## End(Not run)



cleanEx()
nameEx("compareModels")
### * compareModels

flush(stderr()); flush(stdout())

### Name: compareModels
### Title: Function for comparing multiple models based on predictive
###   performance
### Aliases: CompareModels-class compareModels
###   compareModels,ForecastData-method

### ** Examples

## Not run: 
##D data(calibrationSample)
##D 
##D data(testSample)
##D 
##D this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
##D .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
##D .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
##D 
##D this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001, exp=3)
##D 
##D compareModels(this.ensemble,"calibration")
##D 
##D compareModels(this.ensemble,"test")
## End(Not run)



cleanEx()
nameEx("makeForecastData")
### * makeForecastData

flush(stderr()); flush(stdout())

### Name: makeForecastData
### Title: Build a ensemble forecasting data object
### Aliases: makeForecastData

### ** Examples

data(calibrationSample)

## Not run: 
##D data(testSample)
##D this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
##D .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
##D .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
##D 
##D ### to acces individual slots in the ForecastData object
##D getPredCalibration(this.ForecastData)
##D getOutcomeCalibration(this.ForecastData)
##D getPredTest(this.ForecastData)
##D getOutcomeTest(this.ForecastData)
##D getModelNames(this.ForecastData)
##D 
##D ### to assign individual slots, use set functions
##D 
##D setPredCalibration(this.ForecastData)<-calibrationSample[,c("LMER", "SAE", "GLM")]
##D setOutcomeCalibration(this.ForecastData)<-calibrationSample[,"Insurgency"]
##D setPredTest(this.ForecastData)<-testSample[,c("LMER", "SAE", "GLM")]
##D setOutcomeTest(this.ForecastData)<-testSample[,"Insurgency"]
##D setModelNames(this.ForecastData)<-c("LMER", "SAE", "GLM")
## End(Not run)



cleanEx()
nameEx("plot-FDatFitLogit-method")
### * plot-FDatFitLogit-method

flush(stderr()); flush(stdout())

### Name: plot,FDatFitLogit-method
### Title: Plotting function for ensemble models of the class
###   "FDatFitLogit" or "FDatFitNormal", which are the objects created by
###   the 'calibrateEnsemble()' function.
### Aliases: plot,FDatFitLogit-method plot,FDatFitNormal-method

### ** Examples

data(calibrationSample)

data(testSample)

this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
.outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))

this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001, exp=3)

plot(this.ensemble, period="calibration")
plot(this.ensemble, period="test")



cleanEx()
nameEx("summary-FDatFitLogit-method")
### * summary-FDatFitLogit-method

flush(stderr()); flush(stdout())

### Name: summary,FDatFitLogit-method
### Title: Summary Function
### Aliases: SummaryForecastData-class print,SummaryForecastData-method
###   show,SummaryForecastData-method summary,FDatFitLogit-method
###   summary,FDatFitNormal-method

### ** Examples

## Not run: 
##D  data(calibrationSample)
##D 
##D data(testSample)
##D 
##D this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
##D .outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],
##D .outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
##D 
##D this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.001,exp=3)
##D 
##D summary(this.ensemble, period="calibration")
##D 
##D summary(this.ensemble, period="test",showCoefs=FALSE)
## End(Not run)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
