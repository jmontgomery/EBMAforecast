library("multicore")
library("foreach")
library("doMC")
library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/DocumentsGIT/EBMAforecast/")
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

ud4Green <- ud4[,c("forecast.year.quarter", "greenbook", "variable")]
#ud4 <- ud4[,c(1,3,2,4:429)]
ud4 <- ud4[,c(1,3,2,4:430)]
colnames(ud4)[430] <- "XGB"


ud1Green <- ud1[,c("forecast.year.quarter", "greenbook", "variable")]
ud1 <- ud1[,c(1,3,2,4:429)]


myTestFunction <- function(.windowSize=30, .minCal=15, .predYearQuarter="1980.1", .const=0, data=NULL, .imp=FALSE){

  
  .predThis <- which(data$forecast.year.quarter==.predYearQuarter)

  .theseRows <- (.predThis-.windowSize-1):(.predThis-1)

  
  
  .all <- length(.theseRows)
  .selector <-    colSums(is.na(data[.theseRows,]))<=(.all-.minCal)  & !is.na(data[.predThis,])
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

  ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const,  predType="posteriorMedian")
  output <- matrix(c(as.numeric(rownames(data[.predThis,])), ensemble@predTest[1], as.numeric(ensemble@modelWeights)), nrow=1)
  output <- data.frame(output)
  colnames(output) <- c("row", "EBMA", ensemble@modelNames)
  output
}

## a random tester to see if this is working
jacob <- myTestFunction(.predYearQuarter="1991.1",.windowSize=40, .minCal=10, .const=0, data=ud4, .imp=FALSE)


registerDoMC(cores=32)
thisSweep1<- ldply(as.character(ud4[41:146,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.05, .parallel=TRUE,  .imp=FALSE, data=ud4)
thisSweep2<- ldply(as.character(ud4[41:146,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.1, .parallel=TRUE,  .imp=FALSE, data=ud4)
thisSweep3<- ldply(as.character(ud4[41:146,1]), myTestFunction, .windowSize=10, .minCal=5, .const=0, .parallel=TRUE,  .imp=FALSE, data=ud4)
thisSweep4<- ldply(as.character(ud4[41:146,1]), myTestFunction, .windowSize=10, .minCal=5, .const=1, .parallel=TRUE,  .imp=FALSE, data=ud4)

thisSweepTEMP<- ldply(as.character(ud4[41:146,1]), myTestFunction, .windowSize=10, .minCal=5, .const=1, .parallel=TRUE,  .imp=FALSE, data=ud4)

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
    sqrt(mean((log(abs(x)+1)-log(abs(y)+1))^2, na.rm=TRUE))
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


.sweep = thisSweep1
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
.lag <- .lag[.theseRows]
.nrow=dim(.modelPreds)[1]; .ncol=dim(.modelPreds)[2]


.ensemblePred2 <- thisSweep2$EBMA
.ensemblePred3 <- thisSweep3$EBMA
.ensemblePred4 <- thisSweep4$EBMA

modelOut <- modelFits(.outcome, .modelPreds, .lag)
cor(modelOut)
## Now I need to calculate similar stats for the EBMA, but for the correct observations
.ensemblePredMatrix <- matrix(.ensemblePred, nrow=nrow(.modelPreds), ncol=ncol(.modelPreds))
.ensemblePredMatrix[is.na(.modelPreds)] <- NA

ensembleOut <- modelFits(.outcome, .ensemblePredMatrix, .lag)

## Total number of forecasts for models we are comparing ourselves with
count <- colSums(!is.na(.modelPreds))

setwd("/Users/jmontgomery/GitHub/EBMAforecast/APSA_2012/Paper/")

pdf(width=6, height=6, file="compare2Components.pdf")
par(mfrow=c(2,1), mar=c(2,2.5,2,.5), tcl=0, mgp=c(1.1,.1,0), cex.lab=.8, cex.main=.9)
# Compare with components by # forecasts
plot(NULL, xlim=c(0, 108), ylim=c(0,100), xlab="# of forecasts made", ylab=expression(paste("% Metrics ", EBMA<=c, "component", sep="")))
text(count, jitter(rowMeans((modelOut-ensembleOut)>=0)*100, .75), substr(rownames(modelOut), 2, 9), cex=.5, ) # this needs some jitter, or point size differentiation
abline(h=50, lty=3, col="gray20")
title("Comparing EBMA with components", line=.5, cex=.7)
# EBMA performance by meric
plot(NULL, xlim=c(1, 8), ylim=c(0,100),  ylab=expression(paste("% Models ", EBMA<=c, "component", sep="")), xaxt="n", xlab="")
text(1:8, colMeans((modelOut-ensembleOut)>=0)*100,toupper(colnames(modelOut)) )
title("% of models EBMA equals or beats by metric", line=.5, cex=.7)
dev.off()

library(colorRamps)

pdf(height=9, width=7, file="awesome.pdf")
par(mar=c(.5,2,.5,2), mfrow=c(1,1), mgp=c(2,1,0))
plot(NULL, xlim=c(3, .ncol-3), ylim=c(3, .nrow-3), yaxt="n", xaxt="n", xlab="", ylab="")
.thisRamp <- blue2red(1001)
for (i in .nrow:1){
  .thisCol <- .thisRamp[round(as.matrix(.modelWeights[.nrow+1-i,]*1000))][!is.na(.modelWeights[.nrow+1-i,])]
  points((1:.ncol)[!is.na(.modelWeights[.nrow+1-i,])], rep(i, .ncol)[!is.na(.modelWeights[.nrow+1-i,])], pch=15, cex=.5, xlim=c(1, .ncol), ylim=c(0,.nrow), col=.thisCol)
}
par(las=2)
mtext(substr(.modelNames, 2,9), side=3, at=1:.ncol, cex=.3, padj=1)
par(las=1)
mtext(side=4, round(.ensemblePred-.outcome, 2), at=c(.nrow:1), cex=.4, line=1, adj=1)
mtext(side=4,  "Error", at=.nrow+1, cex=.5, line=1, adj=1)
mtext(side=2,  data[.theseRows,1], at=c(.nrow:1), cex=.5, line=1, adj=.5)
#title("Ensemble weights and  for U.S. unemployment ")
legend(.ncol-40, .nrow-20, c("0", "1/4", "1/2", "3/4", "1" ), col=.thisRamp[seq(1,1001, by=250)], pch=c(15, 15,15,15,15), cex=.8, title="Model Weights")
dev.off()



##### Now compare just against three other baseline models
.mean <- rowMeans(data[.theseRows,-c(1:3)], na.rm=TRUE) # an alternate metric
.median <- apply(data[.theseRows,-c(1:3)], 1, quantile, probs=.5, na.rm=TRUE)
.green <- subset(ud4Green, forecast.year.quarter%in%data[.theseRows,1])$greenbook
.time <- subset(ud4Green, forecast.year.quarter%in%data[.theseRows,1])$forecast.year.quarter
all <- cbind(.ensemblePred, .median, .green)
all <- all[!is.na(.green),]
.redOut <- .outcome[!is.na(.green)]
.redLag <- .lag[!is.na(.green)]


all2 <- cbind(.ensemblePred3, .ensemblePred, .ensemblePred2,  .ensemblePred4, .green, .median, .mean)
all2 <- all2[!is.na(.green),]

mycols<-matrix(NA,ncol=3,nrow=4)
mycols[1,]<-c(90, 0, 55)
mycols[2,]<-c(217, 95, 2)
mycols[3,]<-c(117, 112, 179)
mycols[4,]<-c(231, 41, 138)

library(RColorBrewer)
mycols<-brewer.pal(4,"Set3")
### A basic plot of all 3
pdf(height=4, width=7, file="timeSeries2.pdf")
par(mar=c(2,2,.5,2), mfrow=c(1,1), mgp=c(1,0,0), tcl=0)
plot(.time, .redOut, type="l", lwd=3, ylab="", xlab="Year", main="", bty="n", las=1,col=mycols[1])
#mycols <- c("blue", "red", "darkgreen")
for(i in 1:3){
  lines(.time, all[,i], col=mycols[i+1], lty=1+i, lwd=3)
}
legend(2000, 10, c("Observed", "EBMA", "Median", "Green Book"), col=mycols, lty=c(1, 2,3,4),bty="n",lwd=3)
dev.off()

library(xtable)
.outTable <- modelFits(.redOut, all2, .redLag)
xtable(.outTable)
.outTable


#######USEFUL CODE STOPS HERE


