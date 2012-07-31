library("multicore")
library("foreach")
library("doMC")



rm(list=ls())
ud <- read.csv("~/Github/EBMAforecast/APSA_2012/Data/unemployment_data.csv", as.is=TRUE, header=TRUE, row.names=1)

ud1 <- subset(ud, variable=="UNEMP3")
ud4 <- subset(ud, variable=="UNEMP6")

myTestFunction <- function(.windowSize=30, .minCal=15, .predYearQuarter="1980.1"){
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
  ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE)
  output <- data.frame(rownames(ud1[.predThis,]), ensemble@predTest[1])
  colnames(output) <- c("row", "EBMA")
  output
}

myTestFunction(.windowSize=10, .minCal=10)

### Run a bunch of them in paralel
wrapper <- function(x) {myTestFunction(.predYearQuarter=x, .windowSize=10, .minCal=10)}

registerDoMC(cores=12)
thisSweep <- ldply(as.character(ud1[45:125,1]), wrapper, .parallel=TRUE)


ud1$EBMA <- NA
ud1[as.character(thisSweep$row),"EBMA"] <- thisSweep$EBMA


preds <- ud1[as.character(thisSweep$row),-c(1:3)]
preds <- preds[,colSums(is.na(preds))<61]

y <- ud1[as.character(thisSweep$row), 2]

my.fun <- function(x) {sqrt(mean((x-y)^2, na.rm=TRUE))}
temp <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
temp <- temp[!is.na(temp)]
temp[order(temp)]

my.fun <- function(x) {mean(abs(x-y), na.rm=TRUE)}
temp <- aaply(preds, 2, .fun=my.fun, .expand=TRUE)
temp <- temp[!is.na(temp)]
temp[order(temp)]

preds

