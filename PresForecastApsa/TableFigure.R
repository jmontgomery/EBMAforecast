library(devtools)
library(roxygen2)
library(testthat)

#setwd("~/Documents/GITHUB/EBMAforecast/")
setwd("~/GITHUB/EBMAforecast/")
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)



setwd("~/GITHUB/EBMAforecast/PresForecastApsa/")
load("/Users/jmontgomery/Github/EBMAforecast/PresForecastApsa/insample.data.RData")
insample.data <- insample.data[-34,]
rownames(insample.data) <- insample.data$Year
my.years <- paste(seq(1952,2008, by=4))
this.pred <- insample.data[my.years, -c(1, 7, 8)]
this.pred

setwd("~/Dropbox/EBMA/ReplicationFiles/ForPADataverse/")
master.data <- read.csv("presdata.csv", row.names=1)
this.out <- (master.data[my.years, "dv"])



thisFD <- makeForecastData(.predCalibration=this.pred, .outcomeCalibration=this.out, .modelNames=colnames(this.pred))
ensemble <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian")
summary(ensemble, showCoefs=FALSE)

setwd("~/GITHUB/EBMAforecast/PresForecastApsa/")
pdf(file="Figure1.pdf", width=5, height=6)
par(mar=c(2,2,2,1), tcl=0, mgp=c(1,0,0), mfrow=c(2,1))
plot(ensemble, subset=14:15, main=c("2004 Election", "2008 Election"), xLab="% Two Party Vote for Incumbent", col=rep("gray40", 8))                        
dev.off()



                        

                 
