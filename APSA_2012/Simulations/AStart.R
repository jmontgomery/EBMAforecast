rm(list=ls(all=TRUE))
library(EBMAforecast)


setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

### need to simulate some data that gives weights 


#set a number of models
nmod<-4

# specify weights, have to some to 1
#weights<-matrix(nrow=50,ncol=4,rep(c(0.4,0.123,0.240,0.237),50),byrow=TRUE)
W<-c(0.55,0.273,0.040,0.137)


#specify number of observations per model in the calibration period
nobs<- 1000
x1<-rnorm(nobs,mean=4,sd=2)
x2<-rnorm(nobs,mean=-2,sd=5)
x3<-rnorm(nobs,mean=7,sd=3)
x4<-rnorm(nobs,mean=14,sd=10)

### dependent variable 
DV<- as.matrix(nrow=nobs,NA)
prob<-rep(NA,nobs)
## trying to think here.....

for(i in 1:nobs){
	prob[i]<-runif(1)
	
	if(prob[i]<=W[1]){
	DV[i]<-rnorm(1,x1[i],sd=.1)	
	}
	if(prob[i]>W[1] & prob[i]<=W[1]+W[2]){
	DV[i]<-rnorm(1,x2[i],sd=.1)	
	}
	if(prob[i]>W[1]+W[2] & prob[i]<=W[1]+W[2]+W[3]){
	DV[i]<-rnorm(1,x3[i],sd=.1)	
	}
	if(prob[i]>W[1]+W[2]+W[3]){
	DV[i]<-rnorm(1,x4[i],sd=.1)	
	}
}
X<-cbind(x1,x2,x3,x4)

test <- makeForecastData(.predCalibration=X,.outcomeCalibration=DV, .modelNames=c("X1","X2","X3","X4"))

thisEnsemble<-calibrateEnsemble(test, model="normal", useModelParams=F, tol=1e-20, maxIter=1e7)
summary(thisEnsemble)
W

