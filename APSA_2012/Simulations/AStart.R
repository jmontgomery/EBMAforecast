rm(list=ls(all=TRUE))

library(devtools)
library(roxygen2)
library(testthat)
library(MCMCpack)
library(doMC)


#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")

## Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

install(current.code)


library(EBMAforecast)




set.seed(12345)
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")





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



tester<-function(nTrain,nmod,iter,outSample,constant,...){	
  error<-matrix(NA,nrow=iter,ncol=nmod)
  pred.mae<-matrix(NA,nrow=iter,ncol=nmod+1)
  pred.rmse<-matrix(NA,nrow=iter,ncol=nmod+1)

  ##set the alpha for below
  alpha<-c(10,5,3)
  if (nmod>3){alpha<-c(alpha, rep(1, nmod-3))}


  nob <- nTrain+outSample
  
  ##create weights matrix
  for(j in 1:iter){
    W.matrix<-matrix(NA,nrow=nob,ncol=nmod)
    al<-alpha
    W.matrix<-rdirichlet(nob, al)
    
    ##vector to select obs from different models	
    prob<-rep(NA,nob)
    prob<-runif(nob)
    
    select.vec<-selection(prob,W.matrix)

    ##creation of observations
    Dependent<-matrix(ncol=nmod,nrow=nob,NA)
    for(i in 1:nmod){
      Dependent[,i]<-rnorm(nob,runif(1,min=-10,max=10),runif(1,min=0,max=25))
    }

    
    
    ##creation of DV with use of selection vector
    DV<-means<-matrix(NA,nrow=nob)
    for(i in 1:nob){
      means[i,]<-Dependent[i,select.vec[i]]
    }

    DV<-rnorm(nob,mean=means,sd=1)
    test<-makeForecastData(.predCalibration=Dependent[1:nTrain,],.outcomeCalibration=DV[1:nTrain],.predTest=Dependent[(nTrain+1):nob,],.outcomeTest=DV[(nTrain+1):nob])
    thisEnsemble<-calibrateEnsemble(test, model="normal", useModelParams=F, const=constant)
    weights<-apply(W.matrix,2,mean)
    error[j,]<-(thisEnsemble@modelWeights-weights)
    pred.mae[j,]<-compareModels(thisEnsemble,"test",.fitStatistics=c("mae"))@fitStatistics
    pred.rmse[j,]<-compareModels(thisEnsemble,"test",.fitStatistics=c("rmse"))@fitStatistics
    colnames(pred.mae)<-rownames(compareModels(thisEnsemble,"test",.fitStatistics=c("mae"))@fitStatistics)
    colnames(pred.rmse)<-rownames(compareModels(thisEnsemble,"test",.fitStatistics=c("rmse"))@fitStatistics)
  }
  theseParams=c(nTrain,nmod,iter,outSample,constant)
  test.stats<-list(theseParams=theseParams, error=error,pred.mae=pred.mae,pred.rmse=pred.rmse)
  return(test.stats)
}


nTrain<-c(5,10,15,20,50,100)
nmod<-seq(3,15, by=2)
constant<-c(0,.01, .025, .05, .1, .2, .5)
iter<-1000
outSample<-100
params <- expand.grid(nTrain, nmod, constant, outSample, iter)
colnames(params) <- c("nTrain", "nmod", "constant", "outSample", "iter")

masterFun <- function(x){
   tester(nTrain=params[x, "nTrain"], nmod=params[x, "nmod"], iter=params[x, "iter"], outSample=params[x, "outSample"], constant=params[x, "constant"])
}

# This is how we will run it, excpt it wil be 1:xxx where xxx is the number of rows of the params matrix
registerDoMC(cores=4)
output <- alply(1:4,1, masterFun,  .parallel=TRUE)






