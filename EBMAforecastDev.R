library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GITHUB/EBMAforecast/")

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
install(current.code)

# Once it's installed, you can look at the demo
library(EBMAforecast)
demo(EBMAforecast)

help(EBMAforecast)


this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")], .outcomeCalibration=calibrationSample[,"Insurgency"],  .predTest=testSample[,c("LMER", "SAE", "GLM")], .outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM")) 
this.ensemble <- calibrateEnsemble(this.ForecastData, model="logit", tol=0.0001, maxIter=25000, exp=3)

log<-as(this.ForecastData,"ForecastDataLogit")

nrow(this.ForecastData@outcomeCalibration)

setPredCalibration(this.ForecastData)<-matrix(.5,ncol=3,nrow=696) ### yes, warning
setPredTest(this.ForecastData)<-matrix(0.5,ncol=3,nrow=348) ###works!
setOutcomeCalibration(this.ForecastData)<-c(rep(0,600),rep(1,50),rep(1,16),rep(0,30)) #warning works### yes, warning 696
setOutcomeTest(this.ForecastData)<-c(rep(0,23),rep(1,25),rep(0,300)) ### works!!!!!
setModelNames(this.ForecastData)<-c("mokey","sl","oko") ## warning, that not character

setModelNames(this.ForecastData)<-c("monkey","flo","jacob") ## need warning, too many


print(this.ForecastData)
show(this.ForecastData)

help(calibrateEnsemble)

summary(calibrationSample)