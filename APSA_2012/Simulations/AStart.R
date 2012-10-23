rm(list=ls(all=TRUE))
library(EBMAforecast)

set.seed(12345)
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

### need to simulate some data that gives weights 


#set a number of models
nmod<-4

# specify weights, have to some to 1
W<-c(0.55,0.273,0.040,0.137)

sequence<-seq(100,5000,100)
#specify number of observations per model in the calibration period

error<-matrix(NA,ncol=nmod,nrow=length(sequence))
for(i in 1:length(sequence)){
	nobs<-sequence[i]
x1<-rnorm(nobs,mean=4,sd=2)
x2<-rnorm(nobs,mean=-2,sd=5)
x3<-rnorm(nobs,mean=7,sd=3)
x4<-rnorm(nobs,mean=14,sd=10)

### dependent variable 
DV<- as.matrix(nrow=nobs,NA)
prob<-rep(NA,nobs)
## trying to think here.....
X<-cbind(x1,x2,x3,x4)
iter<-200
er<-matrix(NA,nrow=iter,ncol=4)

for(k in 1:iter){
for(j in 1:nobs){
	prob[j]<-runif(1)
	
	if(prob[j]<=W[1]){
	DV[j]<-rnorm(1,x1[i],sd=.1)	
	}
	if(prob[j]>W[1] & prob[j]<=W[1]+W[2]){
	DV[j]<-rnorm(1,x2[j],sd=.1)	
	}
	if(prob[j]>W[1]+W[2] & prob[j]<=W[1]+W[2]+W[3]){
	DV[j]<-rnorm(1,x3[j],sd=.1)	
	}
	if(prob[j]>W[1]+W[2]+W[3]){
	DV[j]<-rnorm(1,x4[j],sd=.1)	
	}

}

test<-list()
test[[k]]<- makeForecastData(.predCalibration=X,.outcomeCalibration=DV, .modelNames=c("X1","X2","X3","X4"))
thisEnsemble<-list()
thisEnsemble[[k]]<-calibrateEnsemble(test[[k]], model="normal", useModelParams=F)


er1<-abs(thisEnsemble[[k]]@modelWeights[1]-W[1])
er2<-abs(thisEnsemble[[k]]@modelWeights[2]-W[2])
er3<-abs(thisEnsemble[[k]]@modelWeights[3]-W[3])
er4<-abs(thisEnsemble[[k]]@modelWeights[4]-W[4])
er[k,]<-c(er1,er2,er3,er4)
}
mean.abs.error<-apply(er,2,mean)
error[i,]<-mean.abs.error

}

mean.error<-apply(error,1,mean)
plot(sequence, mean.error)
plot(sequence, error[,1])
plot(sequence, error[,2])
plot(sequence, error[,3])
plot(sequence, error[,4]

