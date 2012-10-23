rm(list=ls(all=TRUE))
library(EBMAforecast)
library(MCMCpack)
set.seed(12345)
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

### need to simulate some data that gives weights 

###things to set in the beginning, of the function
#set a number of models (right now only works with 4 because of assignment in loop)
nmod<-4
###set wisdom of crowds parameter
c<-0.1
#specify share of sample to be insample
inSampl<-0.8 #1-inSampl will be the outofsample share of the observations

### specify number of iterations
iter<-2

## want to specify a sequence in the function?
sequence<-seq(50,2500,50)



#specify number of observations per model in the calibration period
error<-array(NA,dim=c(iter,nmod,length(sequence)))
mae.predictions<-array(NA,dim=c(iter,nmod+1,length(sequence)))
rmse.predictions<-array(NA,dim=c(iter,nmod+1,length(sequence)))



for(i in 1:length(sequence)){
	nobs<-sequence[i]
x1<-rnorm(nobs,mean=4,sd=3)
x2<-rnorm(nobs,mean=-2,sd=3)
x3<-rnorm(nobs,mean=7,sd=3)
x4<-rnorm(nobs,mean=14,sd=3)


### dependent variable 
DV<- as.matrix(nrow=nobs,NA)
prob<-rep(NA,nobs)
## trying to think here.....
X<-cbind(x1,x2,x3,x4)

er<-matrix(NA,nrow=iter,ncol=nmod)
pred.mae<-matrix(NA,nrow=iter,ncol=nmod+1)
pred.rmse<-matrix(NA,nrow=iter,ncol=nmod+1)

for(k in 1:iter){
	W.matrix<-matrix(NA,nrow=nobs,ncol=nmod)
	alpha<-c(2,1,6,1)#rep(1,nmod)
	W.matrix<-rdirichlet(nobs, alpha)
	
for(j in 1:nobs){
	prob[j]<-runif(1)
	
	if(prob[j]<=W.matrix[j,1]){
	DV[j]<-rnorm(1,x1[i],sd=.1)	
	}
	if(prob[j]>W.matrix[j,1] & prob[j]<=W.matrix[j,1]+W.matrix[j,2]){
	DV[j]<-rnorm(1,x2[j],sd=.1)	
	}
	if(prob[j]>W.matrix[j,1]+W.matrix[j,2] & prob[j]<=W.matrix[j,1]+W.matrix[j,2]+W.matrix[j,3]){
	DV[j]<-rnorm(1,x3[j],sd=.1)	
	}
	if(prob[j]>W.matrix[j,1]+W.matrix[j,2]+W.matrix[j,3]){
	DV[j]<-rnorm(1,x4[j],sd=.1)	
	}

}
inSam<-ceiling(inSampl*nobs)

test<-list()
test[[k]]<- makeForecastData(.predCalibration=X[1:inSam-1,],.outcomeCalibration=DV[1:inSam-1],.predTest=X[inSam:nobs,],.outcomeTest=DV[inSam:nobs], .modelNames=c("X1","X2","X3","X4"))
thisEnsemble<-list()
thisEnsemble[[k]]<-calibrateEnsemble(test[[k]], model="normal", useModelParams=F)




weights<-apply(W.matrix,2,mean)
er1<-(thisEnsemble[[k]]@modelWeights[1]-weights[1])
er2<-(thisEnsemble[[k]]@modelWeights[2]-weights[2])
er3<-(thisEnsemble[[k]]@modelWeights[3]-weights[3])
er4<-(thisEnsemble[[k]]@modelWeights[4]-weights[4])
er[k,]<-c(er1,er2,er3,er4)

pred.mae[k,]<-compareModels(thisEnsemble[[k]],"test",.fitStatistics=c("mae"))@fitStatistics[,1]
pred.rmse[k,]<-compareModels(thisEnsemble[[k]],"test",.fitStatistics=c("rmse"))@fitStatistics[,1]
colnames(pred.mae)<-rownames(compareModels(thisEnsemble[[k]],"test",.fitStatistics=c("mae"))@fitStatistics)
colnames(pred.rmse)<-rownames(compareModels(thisEnsemble[[k]],"test",.fitStatistics=c("mae"))@fitStatistics)

}

error[,,i]<-er
mae.predictions[,,i]<-pred.mae
rmse.predictions[,,i]<-pred.rmse
dimnames(rmse.predictions)=list(NULL,colnames(pred.rmse),NULL)
dimnames(mae.predictions)=list(NULL,colnames(pred.mae),NULL)
}

test.stats<-list(error,mae.predictions,rmse.predictions)
save(test.stats,file=test.stats.RData)








mean.error<-apply(error,1,mean)
plot(sequence, mean.error)
plot(sequence, error[,1])
plot(sequence, error[,2])
plot(sequence, error[,3])
plot(sequence, error[,4])

