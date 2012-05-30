library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GITHUB/EBMAforecast/")

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
install(current.code)

library(EBMAforecast)
demo(EBMAforecast)

help(EBMAforecast)

##test 1 for error predcalibration not between 0 and 1
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))

setPredCalibration(this.ForecastData)<-matrix(1.001,ncol=3,nrow=696) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
setPredCalibration(this.ForecastData)<-matrix(-0.001,ncol=3,nrow=696) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())


##test 2 for error if predtest not between 0 and 1
#reset forecastdata
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))
setPredTest(this.ForecastData)<-matrix(1.001,ncol=3,nrow=348) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
setPredTest(this.ForecastData)<-matrix(-0.001,ncol=3,nrow=348) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())

##test 3 for error if outcomeCalibration not 0 or 1
#reset forecastdata
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))
setOutcomeCalibration(this.ForecastData)<-c(rep(1,600),rep(1.5,96)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
setOutcomeCalibration(this.ForecastData)<-c(rep(1,600),rep(0.5,96)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
setOutcomeCalibration(this.ForecastData)<-c(rep(1,600),rep(-0.00015,96)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())

##test 4 for error if outcomeTest not 0 or 1
#reset forecastdata
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))
setOutcomeTest(this.ForecastData)<-c(rep(1,300),rep(1.5,48)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))
setOutcomeTest(this.ForecastData)<-c(rep(1,300),rep(0.5,48)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())
#
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"],.modelNames=c("LMER", "SAE", "GLM"))
setOutcomeTest(this.ForecastData)<-c(rep(1,300),rep(-0.00015,48)) 
expect_that(as(this.ForecastData,"ForecastDataLogit"), throws_error())


###test 5 for error if length of vectors not the same
expect_that(setPredCalibration(this.ForecastData)<-c(rep(1,240)), throws_error()) ### too short
expect_that(setPredTest(this.ForecastData)<-c(rep(1,240)), throws_error()) ### too short
expect_that(setOutcomeCalibration(this.ForecastData)<-c(rep(1,240)), throws_error())### too short
expect_that(setOutcomeTest(this.ForecastData)<-c(rep(1,240)), throws_error())### too short
expect_that(setPredCalibration(this.ForecastData)<-c(rep(1,940)), throws_error()) ### too long
expect_that(setPredTest(this.ForecastData)<-c(rep(1,940)), throws_error()) ### too long
expect_that(setOutcomeCalibration(this.ForecastData)<-c(rep(1,940)), throws_error())### too long
expect_that(setOutcomeTest(this.ForecastData)<-c(rep(1,900)), throws_error())### too long

#### test 6 for error if columns in predCalibration and predTest differ
expect_that(setPredCalibration(this.ForecastData)<-matrix(1,ncol=4,nrow=696), throws_error())
expect_that(setPredCalibration(this.ForecastData)<-matrix(1,ncol=2,nrow=696), throws_error())
expect_that(setPredTest(this.ForecastData)<-matrix(1,ncol=4,nrow=348), throws_error())
expect_that(setPredTest(this.ForecastData)<-matrix(1,ncol=2,nrow=348), throws_error())

### test 7  check that results for calibration set and test set are the same as in paper after ensemble
this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],.outcomeCalibration=calibrationSample[,"Insurgency"],.predTest=testSample[,c("LMER", "SAE", "GLM")],.outcomeTest=testSample[,"Insurgency"], .modelNames=c("LMER", "SAE", "GLM"))
check1<-calibrateEnsemble(this.ForecastData, model="logit", tol=0.0001, maxIter=25000, exp=3)
test_mat<-round(as.matrix(compareModels(check1, .period="calibration")),3)
check_against<-matrix(c(0.035,0.084, 0.068,0.077,0.960,0.971,0.922,0.656,0.971,0.871,0.901,0.918,0.649,-0.579,-0.211,0.000),ncol=4,nrow=4)
for(i in 1:4){
	for(j in 1:4){
		expect_that(test_mat[i,j], equals(check_against[i,j]))
			
			}
}
test_mat1<-round(as.matrix(compareModels(check1, .period="test")),3)
check_against1<-matrix(c(0.039,0.080, 0.059,0.088,0.973,0.970,0.960,0.721,0.943,0.911,0.920,0.899,0.429,0.114,0.200,0.000),ncol=4,nrow=4)
for(i in 1:4){
	for(j in 1:4){
		expect_that(test_mat1[i,j], equals(check_against1[i,j]))
			
			}
}

#### test 8 check that NA's are not taken
expect_that(setPredCalibration(this.ForecastData)<-matrix(NA,ncol=3,nrow=696), throws_error())
expect_that(setOutcomeCalibration(this.ForecastData)<-c(rep(NA,696)), throws_error())
expect_that(setPredTest(this.ForecastData)<-matrix(1,ncol=3,nrow=348), throws_error())
expect_that(setOutcomeTest(this.ForecastData)<-c(rep(NA,348)), throws_error())


