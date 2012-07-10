library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GITHUB/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
plot(ensemble, subset=15, main=c("2008 Election"), xLab="% Two Party Vote for Bush", col=rep("gray40", 8))                        
par(mfrow=c(2,1))
plot(ensemble, subset=14:15, main=c("2004 Election", "2008 Election"), xLab="% Two Party Vote for Bush", col=rep("gray40", 8))                        

setwd("~/GITHUB/EBMAforecast/PresForecastApsa/")

insample <- read.csv("insample.csv", row.names=2)
insample <- insample[,-1]
my.years <- paste(seq(1952,2008, by=4))
this.pred <- insample[my.years,]


setwd("~/Dropbox/EBMA/ReplicationFiles/ForPADataverse/")
master.data <- read.csv("presdata.csv", row.names=1)
this.out <- (master.data[my.years, "dv"])

trial <- matrix(c(1,2,3,4,5,6,7,8), nrow=1)
trial2 <- c(0)
thisFD <- makeForecastData(.predCalibration=this.pred, .outcomeCalibration=this.out, .predTest=trial, .outcomeTest=trial2, .modelNames=colnames(this.pred))
ensemble <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian")
summary(ensemble, showCoefs=FALSE)

par(mar=c(2,2,2,1), tcl=0, mgp=c(1,0,0))

                        

                 
