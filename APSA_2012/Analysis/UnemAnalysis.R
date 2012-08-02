library("multicore")
library("foreach")
library("doMC")
library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)



rm(list=ls())
ud <- read.csv("~/Github/EBMAforecast/APSA_2012/Data/unemployment_data.csv", as.is=TRUE, header=TRUE, row.names=1)

ud1 <- subset(ud, variable=="UNEMP3")
ud4 <- subset(ud, variable=="UNEMP6")
ud4 <- subset(ud4, forecast.year.quarter>1971.2)
ud4 <- ud4[rowMeans(is.na(ud4[,-c(1:3)]))!=1,]


myTestFunction <- function(.windowSize=30, .minCal=15, .predYearQuarter="1980.1", .const=0, data=NULL, .imp=FALSE){

  
  .predThis <- which(data$forecast.year.quarter==.predYearQuarter)
  .theseRows <- (.predThis-.windowSize-1):(.predThis-1)
  
  
  .all <- length(.theseRows)
  .selector <- colSums(is.na(data[.theseRows,]))<(.all-.minCal) & !is.na(data[.predThis,])
  .reduced <- data[.theseRows, .selector]

   # this code takes out any row where we now have no forecasts
  .rowSelector <- !(rowMeans(is.na(.reduced[,-(1:3)]))==1)
  .reduced <- .reduced[.rowSelector,]

  if(.imp){
    .reduced[,-c(1:3)] <- t(apply(.reduced[,-c(1:3)],1,
                                  function(x) {
                                    x[is.na(x)] <- mean(x, na.rm=TRUE)
                                    x
                                  }
                                  )
                            )
  }

  
  
  
  .target <- data[.predThis, .selector]

  .FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=.target[,-c(1:3)]
                          ,.outcomeTest=.target[,2]
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

  ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
  output <- matrix(c(as.numeric(rownames(data[.predThis,])), ensemble@predTest[1], as.numeric(ensemble@modelWeights)), nrow=1)
  output <- data.frame(output)
  colnames(output) <- c("row", "EBMA", ensemble@modelNames)
  output
}

## a random tester to see if this is working
jacob <- myTestFunction(.predYearQuarter="1991.1",.windowSize=40, .minCal=10, .const=0, data=ud4, .imp=TRUE)

.sweep = thisSweep13
data=ud4



.lagAmount=4
.lag <-c(rep(NA, .lagAmount), data[1:(nrow(data)-.lagAmount),2])
names(.lag) <- rownames(data)



.modelNames <- colnames(.sweep)[-c(1:2)]
.ensemblePred <- .sweep$EBMA
.theseRows <- as.character(.sweep$row)
.modelPreds <- data[.theseRows,.modelNames]
.modelWeights <- .sweep[,-c(1:2)]
.outcome <- data[.theseRows, 2]
.mean <- rowMeans(data[.theseRows,-c(1:3)], na.rm=TRUE) #maybe this should be the lagged (appropriately calculated?)  This serves as the naive model that serves as a baseline.
.lag <- .lag[.theseRows]


data[(.theseRows-1), 2]

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

modelOut <- modelFits(.outcome, .modelPreds, .lag)
cor(modelOut)
## Now I need to calculate similar stats for the EBMA, but for the correct observations
                      .ensemblePredMatrix <- matrix(.ensemblePred, nrow=nrow(.modelPreds), ncol=ncol(.modelPreds))
                      .ensemblePredMatrix[is.na(.modelPreds)] <- NA

ensembleOut <- modelFits(.outcome, .ensemblePredMatrix, .mean)

## Total number of forecasts for models we are comparing ourselves with
count <- colSums(!is.na(.modelPreds))


par(mfrow=c(2,1), mar=c(2,4,3,1), mpg=c(1,0,0))
# Compare with components by # forecasts
plot(NULL, xlim=c(0, 100), ylim=c(0,100), xlab="Number of forecasts made", ylab="% of Metrics that EBMA Wins")
text(count, jitter(rowMeans((modelOut-ensembleOut)>=0)*100, .75), substr(rownames(modelOut), 2, 9), cex=.5, ) # this needs some jitter, or point size differentiation
abline(h=50, lty=3, col="gray20")
title("% of metrics by which EBMA out-performs its \n components  by # of forecasts")
# EBMA performance by meric
plot(NULL, xlim=c(1, 8), ylim=c(0,100),  ylab="% of Models EBMA Beats", xaxt="n")
text(1:8, colMeans((modelOut-ensembleOut)>=0)*100,toupper(colnames(modelOut)) )
title("% of models EBMA beats by metric")

dim(.sweep)
head(.sweep[,-c(1:2)])

library(colorRamps)

par(pin=c(10,152), mar=c(.5,2,3,2))
plot(NULL, xlim=c(4, 158), ylim=c(4,118), yaxt="n", xaxt="n", xlab="", ylab="")
.thisRamp <- blue2red(1000)
for (i in 121:1){
.thisCol <- .thisRamp[round(as.matrix(.modelWeights[122-i,]*1000))][!is.na(.modelWeights[122-i,])]
points((1:162)[!is.na(.modelWeights[122-i,])], rep(i, 162)[!is.na(.modelWeights[122-i,])], pch=15, cex=.5, xlim=c(1, 162), ylim=c(0,121), col=.thisCol)
}
par(las=2)
mtext(substr(.modelNames, 2,9), side=3, at=1:162, cex=.3, padj=1)
par(las=1)
mtext(side=4, round(.ensemblePred-.outcome, 2), at=c(121:1), cex=.4, line=1, adj=1)
mtext(side=4,  "Error", at=122, cex=.5, line=1, adj=1)
mtext(side=2,  data[.theseRows,1], at=c(121:1), cex=.5, line=1, adj=.5)
title("Ensemble weights and predictions for unemployment (4 quarters out)")
legend(100, 120, c("Model weight = 1", "Model weight=0"), col=c("red", "blue"), pch=c(15, 15))

### Run a bunch of them in paralel
params <- expand.grid(wind=c(5,10,20,30), cal=c(3,5,10), crowds=seq(0,.2,.025), impute=c(TRUE, FALSE), data=c(1,2,3,4))
params <- subset(params, wind>cal)
dim(params)

##ALERT: Why are there some with only one forecast?

registerDoMC(cores=32)
thisSweep1 <- thisSweep<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=20, .minCal=10, .const=0, .parallel=TRUE, .imp=FALSE, data=ud4)
thisSweep2<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=20, .minCal=10, .const=.05, .parallel=TRUE)
thisSweep3<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=20, .minCal=10, .const=.1, .parallel=TRUE)
thisSweep4<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=20, .minCal=10, .const=.2, .parallel=TRUE)


thisSweep5<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=30, .minCal=10, .const=0, .parallel=TRUE)
thisSweep6<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=5, .const=0, .parallel=TRUE)
thisSweep7<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=40, .minCal=15, .const=0, .parallel=TRUE)

thisSweep8<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=30, .minCal=10, .const=.1, .parallel=TRUE)
thisSweep9<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.1, .parallel=TRUE)
thisSweep10<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=40, .minCal=15, .const=.1, .parallel=TRUE)


thisSweep11<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=30, .minCal=15, .const=.1, .parallel=TRUE)

thisSweep12<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.2, .parallel=TRUE)
thisSweep13<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.05, .parallel=TRUE,  .imp=FALSE, data=ud4)

thisSweep14<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=3, .const=.05, .parallel=TRUE)
thisSweep15<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=2, .const=.05, .parallel=TRUE)

thisSweep16<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=20, .minCal=3, .const=.05, .parallel=TRUE)
thisSweep17<- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=5, .minCal=2, .const=.05, .parallel=TRUE)


## This one with the actual ud1 data
thisSweep18 <- ldply(as.character(ud1[41:161,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.05, .parallel=TRUE)



compare2Ensemble <- function(column, .fun=my.fun){
  .thisInd <- !is.na(rawPreds[,column])
  .thisPred <- rawPreds[.thisInd, column]
  .thisEBMA <- EBMA[.thisInd]
  .forEval <- cbind(.thisPred, .thisEBMA)
   colnames(.forEval) <- c(colnames(rawPreds)[column], "EBMA")
   y<<-outcome[.thisInd]
   eval <- aaply(.forEval, 2, .fun=my.fun, .expand=TRUE )
   c(eval[1]-eval[2], length(.thisEBMA))
}


thisSweep <- thisSweepImp1
dim(ud1)
rawPreds <- ud1[as.character(thisSweep$row),-c(1:3)]
EBMA <-  as.numeric(levels(thisSweep$EBMA)[thisSweep$EBMA])
preds <- cbind(rowMeans(rawPreds, na.rm=TRUE), apply(rawPreds, 1, quantile, na.rm=TRUE, probs=.5), EBMA)
colnames(preds) <- c("mean", "median", "EBMA")
outcome <- ud1[as.character(thisSweep$row), 2]
par(mfrow=c(3,1), mar=c(2,2,2,2), mgp=c(1,0,0))
my.fun <- function(x) {sqrt(mean((x-y)^2, na.rm=TRUE))}
rmse <- laply(1:426, compare2Ensemble)
 plot(rmse[,1]~rmse[,2], main="RMSE by number of predictions", xlab="# Predictions", ylab="RMSE", xlim=c(1, max(rmse[,2])))
abline(h=0)
.table <- table(rmse[rmse[,2]>10,1]>0)
.table/sum(.table)
my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}
mae <- laply(1:426, compare2Ensemble)
plot(mae[,1]~mae[,2], main="MAE by number of predictions", xlab="# Predictions", ylab="MAE", xlim=c(1, max(mae[,2])))
abline(h=0)
.table <- table(mae[mae[,2]>10,1]>0)
.table/sum(.table)
my.fun <- function(x) {quantile(abs(x-y), na.rm=TRUE, probs=.5)}
mad <- laply(1:426, compare2Ensemble)
plot(mad[,1]~mad[,2], main="Median  absolute deviation", xlab="# Predictions", ylab="MAD", xlim=c(1, max(mad[,2])))
abline(h=0)
.table <- table(mad[mad[,2]>10,1]>0)
.table/sum(.table)


   y<<-outcome
# compare to means
my.fun <- function(x) {sqrt(mean((x-y)^2, na.rm=TRUE))}
temp <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
temp <- temp[!is.na(temp)]
temp[order(temp)]

my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}
temp <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
temp <- temp[!is.na(temp)]
temp[order(temp)]

####

