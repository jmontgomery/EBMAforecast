library("multicore")
library("foreach")
library("doMC")



rm(list=ls())
ud <- read.csv("~/Github/EBMAforecast/APSA_2012/Data/unemployment_data.csv", as.is=TRUE, header=TRUE, row.names=1)

ud1 <- subset(ud, variable=="UNEMP3")
ud4 <- subset(ud, variable=="UNEMP6")
ud4 <- subset(ud4, forecast.year.quarter>1971.2)
ud4 <- ud4[rowMeans(is.na(ud4[,-c(1:3)]))!=1,]
ud1 <- ud4

myTestFunction <- function(.windowSize=30, .minCal=15, .predYearQuarter="1980.1", .const=0){
.predYearQuarter="1991.1"
.windowSize=40
.minCal=10

  .predThis <- which(ud1$forecast.year.quarter==.predYearQuarter)
  .theseRows <- (.predThis-.windowSize-1):(.predThis-1)
  .all <- length(.theseRows)
  .selector <- colSums(is.na(ud1[.theseRows,]))<(.all-.minCal) & !is.na(ud1[.predThis,])
  .reduced <- ud1[.theseRows, .selector]
  .target <- ud1[.predThis, .selector]

  .FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=.target[,-c(1:3)]
                          ,.outcomeTest=.target[,2]
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

  ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
  output <- data.frame(rownames(ud1[.predThis,]), ensemble@predTest[1])
  colnames(output) <- c("row", "EBMA")
  output
}

myTestFunction(.predYearQuarter=ud1[41+37,1],.windowSize=40, .minCal=10, .const=.1)


     
### Run a bunch of them in paralel
wrapper <- function(x, .const=0) {myTestFunction(.predYearQuarter=x, .windowSize=20, .minCal=10, .const=.const)}

registerDoMC(cores=4)
thisSweep1 <- thisSweep<- ldply(as.character(ud1[21:161,1]), wrapper, .parallel=TRUE)
thisSweep2 <- ldply(as.character(ud1[21:161,1]), wrapper, .const=.1, .parallel=TRUE)
thisSweep6 <- ldply(as.character(ud1[21:161,1]), wrapper, .const=.2, .parallel=TRUE)

wrapper <- function(x, .const=0) {myTestFunction(.predYearQuarter=x, .windowSize=30, .minCal=10, .const=.const)}
thisSweep3 <- ldply(as.character(ud1[31:161,1]), wrapper, .const=0, .parallel=TRUE)

wrapper <- function(x, .const=0) {myTestFunction(.predYearQuarter=x, .windowSize=10, .minCal=5, .const=.const)}

thisSweep5 <- ldply(as.character(ud1[21:161,1]), wrapper, .const=0, .parallel=TRUE)


thisSweep <- thisSweep6

dim(ud1)
rawPreds <- ud1[as.character(thisSweep$row),-c(1:3)]
EBMA <- thisSweep$EBMA
preds <- cbind(rowMeans(rawPreds, na.rm=TRUE), apply(rawPreds, 1, quantile, na.rm=TRUE, probs=.5), thisSweep$EBMA)
colnames(preds) <- c("mean", "median", "EBMA")
outcome <- ud1[as.character(thisSweep$row), 2]


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

par(mfrow=c(3,1), mar=c(2,2,2,2), mgp=c(1,0,0))
my.fun <- function(x) {sqrt(mean((x-y)^2, na.rm=TRUE))}
rmse <- laply(1:426, compare2Ensemble)
 plot(rmse[,1]~rmse[,2], main="RMSE by number of predictions", xlab="# Predictions", ylab="RMSE", xlim=c(10, max(rmse[,2])))
abline(h=0)
.table <- table(rmse[rmse[,2]>10,1]>0)
.table/sum(.table)
my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}
mae <- laply(1:426, compare2Ensemble)
plot(mae[,1]~mae[,2], main="MAE by number of predictions", xlab="# Predictions", ylab="MAE", xlim=c(10, max(mae[,2])))
abline(h=0)
.table <- table(mae[mae[,2]>10,1]>0)
.table/sum(.table)
my.fun <- function(x) {quantile(abs(x-y), na.rm=TRUE, probs=.5)}
mad <- laply(1:426, compare2Ensemble)
plot(mad[,1]~mad[,2], main="Median  absolute deviation", xlab="# Predictions", ylab="MAD", xlim=c(10, max(mad[,2])))
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

