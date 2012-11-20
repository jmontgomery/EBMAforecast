rm(list=ls(all=TRUE))

library(devtools)
library(roxygen2)
library(testthat)
library(MCMCpack)
library(doMC)

setwd("~/Documents/GIT/EBMAforecast/")
#setwd("~/GITHUB/EBMAforecast/")

## Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

install(current.code)


library(EBMAforecast)




set.seed(12345)
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")


### jacob's model fits funtion with added cpsr
modelFits <- function(.thisOutcome, .thisForecastMatrix, .thisBaseline){

  
  .absErr <- abs(.thisForecastMatrix-.thisOutcome)
  .sqrErr <- .absErr^2
  .ape <- .absErr/abs(.thisOutcome) # absolute percent error

  ## Mean absolute errror
  mae <- colMeans(.absErr, na.rm=TRUE)

  ## Root mean squared error
  rmse <-  sqrt(colMeans(.sqrErr, na.rm=TRUE))

  ## Median absolute deviation
  mad <- apply(.absErr, 2, quantile, probs=.5, na.rm=TRUE)

  ## Root mean Squared logarithmic error
  .rmsle <- function(x, y){
    mean((log(abs(x)+1)-log(abs(y)+1))^2, na.rm=TRUE)
  }
  rmsle <- apply(.thisForecastMatrix, 2, .rmsle, y=.thisOutcome)

  ## mean absolute percentage error
  mape <- colMeans(.ape, na.rm=TRUE)*100

  ##median absolute percentage errro
  meape <-  apply(.ape, 2, quantile, prob=.5, na.rm=TRUE)*100

  ## median relative absolute error
  .eStar <- .thisOutcome-.thisBaseline
  .e <- .thisOutcome-.thisForecastMatrix
  mrae <- apply(abs(.e/.eStar), 2, quantile, probs=.5, na.rm=TRUE)

  ## percent worse
  pw <- colMeans(abs(.e)>abs(.eStar), na.rm =TRUE)*100
  

  out <- cbind(mae, rmse, mad, rmsle, mape, meape, mrae, pw)


out
}




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

nTrain=4
nmod=3
outSample=20
constant=0.05
iter=1
tester<-function(nTrain,nmod,iter,outSample,constant,...){	
  error<-matrix(NA,nrow=iter,ncol=nmod)
  pred.rmse<-pred.mae<-pred.mad<-pred.rmsle<-pred.mape<-pred.meape<-pred.mrae<-pred.pw<-matrix(NA,nrow=iter,ncol=nmod+1)
  
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
    pred.mae[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,1]
    pred.rmse[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,2]
    pred.mad[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,3]
    pred.rmsle[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,4]
    pred.mape[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,5]
    pred.meape[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,6]
    pred.mrae[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,7]
    pred.pw[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,8]

    
     	colnames(pred.mae)<-colnames(pred.rmse)<-colnames(pred.mad)<-colnames(pred.rmsle)<-colnames(pred.mape)<-colnames(pred.meape)<-colnames(pred.mrae)<-colnames(pred.pw)<-rownames(modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest)))

  }
  theseParams=c(nTrain,nmod,iter,outSample,constant)
  test.stats<-list(theseParams=theseParams, error=error,pred.mae=pred.mae,pred.rmse=pred.rmse,pred.mad=pred.mad,pred.rmsle=pred.rmsle,pred.mape=pred.mape,pred.meape=pred.meape,pred.mrae=pred.mrae,pred.pw=pred.pw)
  return(test.stats)
}


nTrain<-c(3:15,20,25,35,45,55,65,85,100)
nmod<-seq(3,15, by=2)
constant<-c(0,.01, 0.02,.025, 0.03,0.4, .05, 0.075, .1, 0.15,.2, 0.3, .5)
iter<-100
outSample<-100
params <- expand.grid(nTrain, nmod, constant, outSample, iter)
colnames(params) <- c("nTrain", "nmod", "constant", "outSample", "iter")

masterFun <- function(x){
   print(x)
   tester(nTrain=params[x, "nTrain"], nmod=params[x, "nmod"], iter=params[x, "iter"], outSample=params[x, "outSample"], constant=params[x, "constant"])
}

# This is how we will run it, excpt it wil be 1:xxx where xxx is the number of rows of the params matrix

registerDoMC(cores=16)

output <- alply(1:833,1, masterFun,  .parallel=TRUE)




########################################################################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################




modelFits <- function(.thisOutcome, .thisForecastMatrix, .thisBaseline){

  
  .absErr <- abs(.thisForecastMatrix-.thisOutcome)
  .sqrErr <- .absErr^2
  .ape <- .absErr/abs(.thisOutcome) # absolute percent error

  ## Mean absolute errror
  mae <- colMeans(.absErr, na.rm=TRUE)

  ## Root mean squared error
  rmse <-  sqrt(colMeans(.sqrErr, na.rm=TRUE))

  ## Median absolute deviation
  mad <- apply(.absErr, 2, quantile, probs=.5, na.rm=TRUE)

  ## Root mean Squaqred logarithmic error
  .rmsle <- function(x, y){
    mean((log(abs(x)+1)-log(abs(y)+1))^2, na.rm=TRUE)
  }
  rmsle <- apply(.thisForecastMatrix, 2, .rmsle, y=.thisOutcome)

  ## mean absolute percentage error
  mape <- colMeans(.ape, na.rm=TRUE)*100

  ##median absolute percentage errro
  meape <-  apply(.ape, 2, quantile, prob=.5, na.rm=TRUE)*100

  ## median relative absolute error
  .eStar <- .thisOutcome-.thisBaseline
  .e <- .thisOutcome-.thisForecastMatrix
  mrae <- apply(abs(.e/.eStar), 2, quantile, probs=.5, na.rm=TRUE)

  ## percent worse
  pw <- colMeans(abs(.e)>abs(.eStar), na.rm =TRUE)*100
  

  out <- cbind(mae, rmse, mad, rmsle, mape, meape, mrae, pw)


out
}

### but it doesn't work yet.
### cprs code from raftery with copyright! crpsNormal <-
forecasts<-as.data.frame(thisEnsemble@predTest)
outcomes<-as.data.frame(thisEnsemble@outcomeTest)
sd<-sqrt(thisEnsemble@variance)
biasCoefs<-as.data.frame(thisEnsemble@modelParams)
weights<-thisEnsemble@modelWeights
crps(sd,weights,biasCoefs,forecasts,outcomes)

crps<-function(sd, weights, biasCoefs, forecasts,outcomes)
{
#
# copyright 2006-present, University of Washington. All rights reserved.
# for terms of use, see the LICENSE file
#
  #a couple of helper functions
  erf <- function(x) 2 * pnorm(x * sqrt(2)) - 1

  absExp <- function(mu, sig) 
  {
   (sqrt(2)* sig)*exp(-(mu/sig)^2/2)/sqrt(pi) + 
                       mu * erf((sqrt(2)*mu)/(2*sig))
  }


  # Expression of the CRPS formula and the E|x| if x ~ N(mu,sigma^2)

  # CRPS = .5 sum( sum( w(i)w(j) a( u(i) - u(j), sigma(i)^2 + sigma(j)^2) ) ) 
  #   - sum( w(i) a( mu(i) - obs, sigma(i)^2 )
  # here, a(u, sigma^2) is from E|X| with X ~ N(u, sigma^2)
  # Using Maple, I get Expected value of abs( X ) with X ~ N > >
  # (sigma*sqrt(2)*exp(-1/2/sigma^2*mu^2)+mu*erf(1/2/sigma*mu*2^(1/2))
  # *sqrt(Pi)) > / Pi^(1/2) > > 
  # where erf is the error function.
 
    nForecasts <- length(weights)

    if (length(sd) == 1) sd <- rep(sd, nForecasts)
    VAR <- sd*sd

    MEAN <- sweep(forecasts, MARGIN = 1, FUN = "*", 
                 STATS = biasCoefs[2,])
   MEAN <- sweep(MEAN, MARGIN = 2, FUN = "+", STATS = biasCoefs[1,])
    obs <- outcomes
    nObs <- dim(obs)[1]

    crpsTP <- numeric(nObs)

    for (l in 1:nObs) {

       M <- is.na(MEAN[l,])

       W <- weights/sum(weights[!M])

       crps1 <- crps2 <- 0

  # Begin computing the first term in the CRPS formula.  
  # This is a double sum since it is over w(i)*w(j) for all i and j.

       for (i in (1:nForecasts)[!M]) 
         {
            for (j in (1:nForecasts)[!M]) 
               {
                  tvar <- VAR[i] + VAR[j]  # total variance
                  tsd <- sqrt(tvar)          # total standard deviation
                  tmean <- MEAN[l,i] - MEAN[l,j]
                  temp <- absExp(tmean,tsd)
                  term <- (W[i]*W[j])*temp
                  crps1 <- crps1 + term
               }

             tvar <- VAR[i]              # total variance
             tsd <- sqrt(tvar)            # total standard deviation
             tmean <- MEAN[l,i] - obs[l]
             crps2 <- crps2 + W[i]*absExp(tmean,tsd)
        }

    # Using Szekely's expression for the CRPS, 
    # the first sum and second are put together to compute the CRPS.

     crpsTP[l]  <- crps2 - crps1/2     
    }

  mean(crpsTP)
}





