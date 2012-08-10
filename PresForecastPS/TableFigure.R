rm(list=ls())
library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GIT/EBMAforecast/")
#setwd("~/GITHUB/EBMAforecast/")
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)



# setwd("~/GITHUB/EBMAforecast/PresForecastApsa/")
# load("~/Github/EBMAforecast/PresForecastApsa/insample.data.RData")
# load("~/Github/EBMAforecast/PresForecastApsa/data_2012.RData")

setwd("~/Documents/GIT/EBMAforecast/PresForecastPS/")
load("~/Documents/GIT/EBMAforecast/PresForecastPS/insample.data.RData")
load("~/Documents/GIT/EBMAforecast/PresForecastPS/data_2012.RData")

insample.data <- insample.data[-c(34,35),]
rownames(insample.data) <- insample.data$Year
my.years <- paste(seq(1948,2008, by=4))
this.pred <- insample.data[my.years, -c(1, 3,  5,6 , 7,   15)]
this.pred
dim(this.pred)
setwd("~/Dropbox/EBMA/ReplicationFiles/ForPADataverse/")
master.data <- read.csv("presdata.csv", row.names=1)
this.out <- (master.data[my.years, "dv"])
this.test <- as.matrix(data_2012)[,-c(2,4,5,6,14)]
length(this.test)
ncol(this.pred)

thisFD <- makeForecastData(.predCalibration=this.pred, .outcomeCalibration=this.out,  .modelNames=colnames(this.pred))
thisFD@predTest <- array(this.test, dim=c(1, 9, 1))
thisFD@outcomeTest <- 0

eList <- list()
counter <- 1
for(i in  c(seq(0,.29, by=.01), seq(.3, .5, .1))){
  eList[[counter]] <- ensemble <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=i)
  print(i)
  print(summary(ensemble, showCoefs=TRUE))
  counter <- counter+1
}

ensemble <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=.1)
summary(ensemble, showCoefs=FALSE)
ensemble@predTest

### Check: Do we get the same answer using the ensembleBMA package.

   master.years <- seq(1980, 2008, by=4)
   rownames(this.pred) <- master.years
   new.out <- matrix(this.test, nrow=1)
   rownames(new.out) <- 2012
   in.master <- this.pred
   out.master <- new.out
   colnames(out.master) <- colnames(in.master)

   # Now fit the ebma model
    full.forecasts <- rbind(in.master, out.master) 
    full.observed <- c(this.out, 50)

   # Stupid thing to make data work with ensembleBMA function
   dates <- rep(NA, 9)
   for (i in 1:9){
     dates[i] <- paste("2011", "01", 10+i, "01", sep="")
    }

   pred.date <- dates[9]
   my.E.data <- ensembleData(forecasts=(full.forecasts), dates=dates, observations=full.observed,
                             initializationTime=1, forecastHour=1) #Make a dataset of the appropriate format for the ensembleBMA package
   fit.eBMA <- ensembleBMAnormal(my.E.data, trainingDays=8, dates=pred.date, minCRPS=FALSE,
                              control=controlBMAnormal(biasCorrection="none", tol=sqrt(.Machine$double.eps))) # Fit the EBMA models
round(fit.eBMA$weights, 3)

summary(ensemble)
ensemble@variance
fit.eBMA$sd^2


#####


#setwd("~/GITHUB/EBMAforecast/wordisbeautiful/")
setwd("~/Documents/GIT/EBMAforecast/wordisbeautiful/")

pdf(file="Figure1.pdf", width=5, height=6)
par(mar=c(2,2,2,1), tcl=0, mgp=c(1,0,0), mfrow=c(2,1))
plot(ensemble, subset=15:16, main=c("2004 Election", "2008 Election"), xLab="% Two Party Vote for Incumbent Party Candidate", col=rep("gray40", 8))
dev.off()



### WARNING: This should be changed before to make sure no missing values
modelPreds <- ensemble1@predTest[-1]
.miss <- !is.na(modelPreds)
modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}


ensembleBMA:::quantBMAnormal(.05, ensemble1@modelWeights, modelPreds, rep(sqrt(ensemble1@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble1@modelWeights, modelPreds, rep(sqrt(ensemble1@variance), length(modelPreds)))


# Prob that Obama wins
1-ensembleBMA:::cdfBMAnormal(50, ensemble1@modelWeights, modelPreds, rep(sqrt(ensemble1@variance), length(modelPreds)), 0)




                        

                 
