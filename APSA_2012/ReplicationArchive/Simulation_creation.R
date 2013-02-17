###############################################################################################
##########################				Montgomery, Hollenbach, Ward 2013 									#############
##########################				Replication files necessary for replicating								#############
##########################				Section 4.1, Figures 1 & 2														#############
##########################				Last Edited: Florian M. Hollenbach										#############
##########################				Date 02-17-2013																		#############
###############################################################################################


rm(list=ls(all=TRUE))

library(devtools)
library(roxygen2)
library(testthat)
library(MCMCpack)
library(doMC)

# You will want to replace this line with the appropriate directory
#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")

## Only need to run this portion once, package developed with `wisdom of crowds' parameter, not yet released on CRAN
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

install(current.code)


library(EBMAforecast)



#set seed and working directory
# You will want to replace this line with the appropriate directory
set.seed(12345)
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")


### Function to calculate model fit statistics 
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


### funtion to calculate CRPS
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

    MEAN <- sweep(forecasts, MARGIN = 2, FUN = "*", 
                 STATS = biasCoefs[2,])
   MEAN <- sweep(MEAN, MARGIN = 2, FUN = "+", STATS = biasCoefs[1,])
    obs <- outcomes
    nObs <- length(obs)

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






## create a function to select observations to be used for the DV, by weight and probability per row
#function will be used in the dataset creation below
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
}

#### tester function creates simulated dataset with set number of models (nmod), size of the training set (nTrain), and runs the EBMA model with specified "wisdom of crowds" parameter c
### takes input nTrain, nmod, iter (number of simulation iterations), outSample (number of out of sample obs), constant (c)
### function returns model fit statistics, nTrain, nmod and constant
tester<-function(nTrain,nmod,iter,outSample,constant,...){

  
  error<-matrix(NA,nrow=iter,ncol=nmod)
 pred.rmse<-pred.mae<-pred.mad<-pred.rmsle<-pred.mape<-pred.meape<-pred.mrae<-pred.pw<-matrix(NA,nrow=iter,ncol=nmod+1)

model.crps <- matrix(NA, nrow=iter, ncol=1)

  ##set the alpha for weights creation below
  alpha<-c(10,5,3)
  if (nmod>3){alpha<-c(alpha, rep(1, nmod-3))}


  nob <- nTrain+outSample #number of observations
  
  ##create weights matrix
  for(j in 1:iter){
    W.matrix<-matrix(NA,nrow=nob,ncol=nmod)
    al<-alpha
    W.matrix<-rdirichlet(nob, al) #drawing weights, given alphas specified above
    
    ##vector to select obs from different models	
    prob<-rep(NA,nob)
    prob<-runif(nob)
    
    select.vec<-selection(prob,W.matrix)

    ##creation of observations for DV
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
    test<-makeForecastData(.predCalibration=Dependent[1:nTrain,],.outcomeCalibration=DV[1:nTrain],.predTest=Dependent[(nTrain+1):nob,],.outcomeTest=DV[(nTrain+1):nob]) #create the dataframe to run EBMA algorithm
    thisEnsemble<-calibrateEnsemble(test, model="normal", useModelParams=F, const=constant) #run EBMA algorithm on data
    #save simulated "true" weights
    weights<-apply(W.matrix,2,mean)
    #save difference in "true" and estimated weights
    error[j,]<-(thisEnsemble@modelWeights-weights)
    #save error statistics
    pred.mae[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,1]
    pred.rmse[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,2]
    pred.mad[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,3]
    pred.rmsle[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,4]
    pred.mape[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,5]
    pred.meape[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,6]
    pred.mrae[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,7]
    pred.pw[j,]<-modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest))[,8]


    forecasts<-(thisEnsemble@predTest)[,-1,1]
outcomes<-(thisEnsemble@outcomeTest)
sd<-sqrt(thisEnsemble@variance)
biasCoefs<-((thisEnsemble@modelParams))[,,1]
weights<-thisEnsemble@modelWeights
model.crps[j]<-crps(sd,weights,biasCoefs,forecasts,outcomes)


    

    
  }
  #save everything
    colnames(pred.mae)<-colnames(pred.rmse)<-colnames(pred.mad)<-colnames(pred.rmsle)<-colnames(pred.mape)<-colnames(pred.meape)<-colnames(pred.mrae)<-colnames(pred.pw)<-rownames(modelFits(DV[(nTrain+1):nob],thisEnsemble@predTest, rowMeans(thisEnsemble@predTest)))



theseParams=c(nTrain,nmod,iter,outSample,constant)




  #return test statistics
  test.stats<-list(theseParams=theseParams, error=error,model.crps=model.crps, pred.mae=pred.mae,pred.rmse=pred.rmse,pred.mad=pred.mad,pred.rmsle=pred.rmsle,pred.mape=pred.mape,pred.meape=pred.meape,pred.mrae=pred.mrae,pred.pw=pred.pw)
  return(test.stats)
}
	



### set parameter values for simulation
nTrain<-c(3:15,20,25,35,45,55,65,85,100)
nmod<-seq(3,15, by=2)
constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
iter<-100
outSample<-250
params <- expand.grid(nTrain, nmod, constant, outSample, iter)
colnames(params) <- c("nTrain", "nmod", "constant", "outSample", "iter")

masterFun <- function(x){
   print(x)
   tester(nTrain=params[x, "nTrain"], nmod=params[x, "nmod"], iter=params[x, "iter"], outSample=params[x, "outSample"], constant=params[x, "constant"])
}

# This is how we ran it, except it wil be 1:xxx where xxx is the number of rows of the params matrix

#multiple cores, can be cut
registerDoMC(cores=24)

#run for all parameter combinations
output <- alply(1:1911,1, masterFun,  .parallel=TRUE)

# check simulation output
summary(output)




###############################################################################################
##########################				Figure 1 in section 4.1																#############
##########################																												#############
##########################																												#############
##########################																												#############
###############################################################################################
value1 <- 0
slots<-NA
count<-0
for(i in 1:1911){
	if(output[[i]]$theseParams[5]==value1){
	count<-count+1
	slots[count]<-i
      } 
	}
error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
count <- 1
y.axis <- x.axis <- rep(NA, length(slots))
for(i in slots){
            crps.mat[count,] <- output[[i]]$model.crps #crps
            x.axis[count] <- output[[i]]$theseParams[2]/output[[i]]$theseParams[1] #number of models/observations in training period
            y.axis[count] <- output[[i]]$theseParams[5] #C
            count <- count+1
}
    crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE)) 

##### Figure 1
pdf("2D.pdf")    
plot(x.axis, crps, ylim=c(5, 10.5), xlab=expression(frac("K",n[T])),ylab="CRPS",las=1,cex=0.5,pch=20,frame=F)
dev.off()



###############################################################################################
##########################				Figure 2 in section 4.1																#############
##########################																												#############
##########################																												#############
##########################																												#############
###############################################################################################



lo<-	loess(crps~x.axis+y.axis) #loess smoothing for 3D plot

### create new data to plot in 3D given the loess smoothing
xpred=seq(0,5,length.out=25)
ypred=seq(0,0.5,length.out=25)
for_pred=as.matrix(expand.grid(x=xpred,y=ypred))
tryThis <- predict(lo,newdata=for_pred)


### create 3D plot (Figure 2)
col=gray(1000000:0/1000000)
library(lattice)
pdf("3D.pdf")
trellis.par.set("axis.line",list(col=NA,lty=1,lwd=1))

wireframe(tryThis~for_pred[,1]+for_pred[,2],xlab=expression(frac("K",n[T])), ylab="C", zlab="CRPS", drape=TRUE,lwd=0,col.regions=col,scales = list(arrows=FALSE, cex= 0.6, col = "black",font = 1, tck = 0.5),colorkey=F)
dev.off()







