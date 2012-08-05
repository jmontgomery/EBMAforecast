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
pres <- read.csv("~/Github/EBMAforecast/APSA_2012/Data/OutSample_Silver.csv", as.is=TRUE, header=TRUE)

pres <- pres[1:5,]
colnames(pres)[1] <- "year"
lewisBeck <- c(pres[1,5], pres[2:5,12]) 
myPres <- cbind(pres$year, pres$TRUE., NA, pres$Fair, pres$Abramowitz, pres[,4], pres$Hibbs, lewisBeck, pres$Lockerbi, pres$Holbrook,pres[,"Wlezien...Erikson"], pres[,23])
colnames(myPres) <- c("year", "truth", "junk", "Fair", "Abramowitz", "Campbell", "Hibbs", "LewisBeck", "Lockerbie","Holbrook", "Erikson", "Cuzan")
myPres <- data.frame(myPres)
myPres[,1] <- as.character(myPres[,1])

.predThis=5
data=myPres
.minCal=2
.theseRows <- c(1:5)
.all <- 4
.const=.1

#.selector <-  colSums(is.na(data[.theseRows,]))<=  (.all-.minCal) & !is.na(data[.predThis,])
.selector <- rep(TRUE, 9)
.reduced <- data[.theseRows, .selector]
#.target <- data[.predThis, .selector]
.target <- data[5,.selector]

 .FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=.target[,-c(1:3)]
                          ,.outcomeTest=.target[,2]
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

 ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
summary(ensemble)
ensemble@predTest
