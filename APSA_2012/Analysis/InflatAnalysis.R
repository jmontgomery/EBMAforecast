library("multicore")
library("foreach")
library("doMC")
library(devtools)
library(roxygen2)
library(testthat)
library(colorRamps)
library(xtable)

#setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)

rm(list=ls())
cpid <- read.csv("~/Github/EBMAforecast/APSA_2012/Data/cpi_data.csv", as.is=TRUE, header=TRUE, row.names=1)

cpi1 <- subset(cpid, variable=="CPI3")
cpi4 <- subset(cpid, variable=="CPI6")
cpi4 <- subset(cpi4, forecast.year.quarter>1971.2)
cpi4 <- cpi4[rowMeans(is.na(cpi4[,-c(1:3)]))!=1,]

cpi4Green <- cpi4[,c("forecast.year.quarter", "greenbook", "variable")]
cpi4 <- cpi4[,c(1,3,2,4:429)]
#cpi4 <- cpi4[,c(1,3,2,4:430)]

cpi1Green <- cpi1[,c("forecast.year.quarter", "greenbook", "variable")]
#cpi1 <- cpi1[,c(1,3,2,4:429)]
cpi1 <- cpi1[,c(1,3,2,4:430)]

jacob <- myTestFunction(.predYearQuarter=cpi4[21,1],.windowSize=10, .minCal=5, .const=0, data=cpi4, .imp=FALSE)

registerDoMC(cores=4)

thisSweepCpi<- ldply(as.character(cpi4[21:109,1]), myTestFunction, .windowSize=10, .minCal=5, .const=.05, .parallel=TRUE,  .imp=TRUE, data=cpi4)



### now gather it all in and plot a bit.

.sweep = thisSweepCpi
data=cpi4
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
modelOut <- modelFits(.outcome, .modelPreds, .lag)
cor(modelOut)
## Now I need to calculate similar stats for the EBMA, but for the correct observations
.ensemblePredMatrix <- matrix(.ensemblePred, nrow=nrow(.modelPreds), ncol=ncol(.modelPreds))
.ensemblePredMatrix[is.na(.modelPreds)] <- NA
ensembleOut <- modelFits(.outcome, .ensemblePredMatrix, .lag)
## Total number of forecasts for models we are comparing ourselves with
count <- colSums(!is.na(.modelPreds))


par(mfrow=c(2,1), mar=c(2,2.5,2,.5), tcl=0, mgp=c(1.1,.1,0), cex.lab=.8, cex.main=.9)
# Compare with components by # forecasts
plot(NULL, xlim=c(0, 100), ylim=c(0,100), xlab="# of forecasts made", ylab="% Metrics EBMA >= Components")
text(count, jitter(rowMeans((modelOut-ensembleOut)>=0)*100, .75), substr(rownames(modelOut), 2, 9), cex=.5, ) # this needs some jitter, or point size differentiation
abline(h=50, lty=3, col="gray20")
title("Comparing EBMA with components", line=.5, cex=.7)
# EBMA performance by meric
plot(NULL, xlim=c(1, 8), ylim=c(0,100),  ylab="% of Models EBMA Equals or Beats", xaxt="n", xlab="")
text(1:8, colMeans((modelOut-ensembleOut)>=0)*100,toupper(colnames(modelOut)) )
title("% of models EBMA equals or beats by metric", line=.5, cex=.7)






par(mar=c(.5,2,3,2), mfrow=c(1,1), mgp=c(2,1,0))
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
title("Ensemble weights and predictions for unemployment (4 quarters out)")
legend(.ncol-40, .nrow-20, c("0", "1/4", "1/2", "3/4", "1" ), col=.thisRamp[seq(1,1001, by=250)], pch=c(15, 15,15,15,15), cex=.8, title="Model Weights")

##### Now compare just against three other baseline models
.mean <- rowMeans(data[.theseRows,-c(1:3)], na.rm=TRUE) # an alternate metric
.median <- apply(data[.theseRows,-c(1:3)], 1, quantile, probs=.5, na.rm=TRUE)
.green <-  subset(cpi4Green, forecast.year.quarter%in%data[.theseRows,1])$greenbook
.time <- subset(cpi4Green, forecast.year.quarter%in%data[.theseRows,1])$forecast.year.quarter
all <- cbind(.ensemblePred, .mean, .median, .green)
all <- all[!is.na(.green),]
.redOut <- .outcome[!is.na(.green)]
.redLag <- .lag[!is.na(.green)]
### A basic plot of all 3
par(mfrow=c(1,1), mar=c(2,2,2,2))
plot(.time, .redOut, type="l", lwd=2)
for(i in 1:4){
  lines(.time, all[,i], col=1+i, lty=2)
}
.outTable <- modelFits(.redOut, all, .redLag)
xtable(.outTable[c(1,4,3,2),])
.outTable
