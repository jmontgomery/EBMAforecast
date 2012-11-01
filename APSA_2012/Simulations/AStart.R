rm(list=ls(all=TRUE))
library(EBMAforecast)
library(MCMCpack)
set.seed(12345)
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")


##function selects observation to be use for DV, by weight and prob per row
selection<-function(probability, matrix){
			models<-dim(matrix)[2]
			obs<-dim(matrix)[1]
			interval<-matrix
			for(i in 2:models){
			interval[,1]<-matrix[,1]
			interval[,i]<-rowSums(matrix[,1:i])
			}
			position<-matrix(as.numeric(((probability<=interval))),ncol=models,nrow=obs)
			pos<-rowSums(position)
			pos.1<-(pos*(-1))+(models+1)
			W.indicator<-pos.1
			return(W.indicator)
}##works



tester<-function(nob,nmod,alpha,iter,inSampl,c,...){	
error<-matrix(NA,nrow=iter,ncol=nmod)
pred.mae<-matrix(NA,nrow=iter,ncol=nmod+1)
pred.rmse<-matrix(NA,nrow=iter,ncol=nmod+1)

####create weights matrix
for(j in 1:iter){
W.matrix<-matrix(NA,nrow=nob,ncol=nmod)
al<-alpha
W.matrix<-rdirichlet(nob, al)

#vector to select obs from different models	
prob<-rep(NA,nob)
prob<-runif(nob)

select.vec<-selection(prob,W.matrix)
#creation of observations
Dependent<-matrix(ncol=nmod,nrow=nob,NA)
for(i in 1:nmod){
	Dependent[,i]<-rnorm(nob,runif(1,min=-10,max=10),runif(1,min=0,max=25))
}

#creation of DV with use of selection vector
DV<-means<-matrix(NA,nrow=nob)
for(i in 1:nob){
means[i,]<-Dependent[i,select.vec[i]]
}

DV<-rnorm(nob,mean=means,sd=1)
inSam<-ceiling(inSampl*nob)
test<-makeForecastData(.predCalibration=Dependent[1:inSam-1,],.outcomeCalibration=DV[1:inSam-1],.predTest=Dependent[inSam:nob,],.outcomeTest=DV[inSam:nob])
thisEnsemble<-calibrateEnsemble(test, model="normal", useModelParams=F)
weights<-apply(W.matrix,2,mean)
error[j,]<-(thisEnsemble@modelWeights-weights)
pred.mae[j,]<-compareModels(thisEnsemble,"test",.fitStatistics=c("mae"))@fitStatistics
pred.rmse[j,]<-compareModels(thisEnsemble,"test",.fitStatistics=c("rmse"))@fitStatistics
colnames(pred.mae)<-rownames(compareModels(thisEnsemble,"test",.fitStatistics=c("mae"))@fitStatistics)
colnames(pred.rmse)<-rownames(compareModels(thisEnsemble,"test",.fitStatistics=c("rmse"))@fitStatistics)
}
test.stats<-list(error,pred.mae,pred.rmse)
return(test.stats)
}
save(test.stats,file=test.stats.RData)


sequence<-seq(50,2500,50)
blub<-list()

for(k in 1:length(sequence)){

blub[[k]]<-tester(nob=sequence[k],nmod=5,alpha=c(1,4,3,9,2),iter=50,inSampl=0.8,c=1)
}



mean.error<-apply(error,1,mean)
plot(sequence, mean.error)
plot(sequence, error[,1])
plot(sequence, error[,2])
plot(sequence, error[,3])
plot(sequence, error[,4])

