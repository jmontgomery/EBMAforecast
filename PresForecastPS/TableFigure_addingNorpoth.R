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
thisFD@predTest <- array(this.test, dim=c(1, 10, 1))
thisFD@outcomeTest <- 0

eList <- list()
counter <- 1
for(i in  c(seq(0,.29, by=.01), seq(.3, .5, .1))){
  eList[[counter]] <- ensemble <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=1.490116e-08, maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=i)
  print(i)
  print(summary(ensemble, showCoefs=TRUE))
  counter <- counter+1
}

ensemble0 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0)
summary(ensemble0, showCoefs=FALSE)
ensemble0@predTest

ensemble05 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.05)
summary(ensemble05, showCoefs=FALSE)
ensemble05@predTest



### Check: Do we get the same answer using the ensembleBMA package.

   master.years <- seq(1948, 2008, by=4)
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
   dates <- rep(NA, 17)
   for (i in 1:17){
     dates[i] <- paste("2011", "01", 10+i, "01", sep="")
    }

   pred.date <- dates[17]
   my.E.data <- ensembleData(forecasts=(full.forecasts), dates=dates, observations=full.observed,
                             initializationTime=1, forecastHour=1) #Make a dataset of the appropriate format for the ensembleBMA package
   fit.eBMA <- ensembleBMAnormal(my.E.data, trainingDays=16, dates=pred.date, minCRPS=FALSE,
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
modelPreds <- ensemble05@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}


ensembleBMA:::quantBMAnormal(.05, ensemble05@modelWeights, modelPreds, rep(sqrt(ensemble05@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble05@modelWeights, modelPreds, rep(sqrt(ensemble05@variance), length(modelPreds)))


# Prob that Obama wins
1-ensembleBMA:::cdfBMAnormal(50, ensemble05@modelWeights, modelPreds, rep(sqrt(ensemble05@variance), length(modelPreds)), 0)


## sweep by hand with norpoth data


#0.00                      
ensemble0 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0)
summary(ensemble0, showCoefs=FALSE)
ensemble0@predTest
modelPreds <- ensemble0@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble0@modelWeights, modelPreds, rep(sqrt(ensemble0@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble0@modelWeights, modelPreds, rep(sqrt(ensemble0@variance), length(modelPreds)))


##0.01
ensemble01 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.01)
summary(ensemble01, showCoefs=FALSE)
ensemble01@predTest
modelPreds <- ensemble01@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble01@modelWeights, modelPreds, rep(sqrt(ensemble01@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble01@modelWeights, modelPreds, rep(sqrt(ensemble01@variance), length(modelPreds)))

#0.02
ensemble02 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.02)
summary(ensemble02, showCoefs=FALSE)
ensemble02@predTest
modelPreds <- ensemble02@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble02@modelWeights, modelPreds, rep(sqrt(ensemble02@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble02@modelWeights, modelPreds, rep(sqrt(ensemble02@variance), length(modelPreds)))

##0.03
ensemble03 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.03)
summary(ensemble03, showCoefs=FALSE)
ensemble03@predTest
modelPreds <- ensemble03@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble03@modelWeights, modelPreds, rep(sqrt(ensemble03@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble03@modelWeights, modelPreds, rep(sqrt(ensemble03@variance), length(modelPreds)))

##0.04
ensemble04 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.04)
summary(ensemble04, showCoefs=FALSE)
ensemble04@predTest
modelPreds <- ensemble04@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble04@modelWeights, modelPreds, rep(sqrt(ensemble04@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble04@modelWeights, modelPreds, rep(sqrt(ensemble04@variance), length(modelPreds)))

##0.05

ensemble05 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.05)
summary(ensemble05, showCoefs=FALSE)
ensemble05@predTest
modelPreds <- ensemble05@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble05@modelWeights, modelPreds, rep(sqrt(ensemble05@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble05@modelWeights, modelPreds, rep(sqrt(ensemble05@variance), length(modelPreds)))

#0.06
ensemble06 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.06)
summary(ensemble06, showCoefs=FALSE)
ensemble06@predTest
modelPreds <- ensemble06@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble06@modelWeights, modelPreds, rep(sqrt(ensemble06@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble06@modelWeights, modelPreds, rep(sqrt(ensemble06@variance), length(modelPreds)))

##0.07
ensemble07 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.07)
summary(ensemble07, showCoefs=FALSE)
ensemble07@predTest
modelPreds <- ensemble07@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble07@modelWeights, modelPreds, rep(sqrt(ensemble07@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble07@modelWeights, modelPreds, rep(sqrt(ensemble07@variance), length(modelPreds)))

#0.08

ensemble08 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.08)
summary(ensemble08, showCoefs=FALSE)
ensemble08@predTest
modelPreds <- ensemble08@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble08@modelWeights, modelPreds, rep(sqrt(ensemble08@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble08@modelWeights, modelPreds, rep(sqrt(ensemble08@variance), length(modelPreds)))

#0.09

ensemble09 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.09)
summary(ensemble09, showCoefs=FALSE)
ensemble09@predTest
modelPreds <- ensemble09@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble09@modelWeights, modelPreds, rep(sqrt(ensemble09@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble09@modelWeights, modelPreds, rep(sqrt(ensemble09@variance), length(modelPreds)))

#c=0.1
ensemble1 <- calibrateEnsemble(.forecastData=thisFD, model="normal", tol=sqrt(.Machine$double.eps), maxIter=1000000, useModelParams=FALSE, predType="posteriorMedian", const=0.1)
summary(ensemble1, showCoefs=FALSE)
ensemble1@predTest
modelPreds <- ensemble1@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}
ensembleBMA:::quantBMAnormal(.05, ensemble1@modelWeights, modelPreds, rep(sqrt(ensemble1@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble1@modelWeights, modelPreds, rep(sqrt(ensemble1@variance), length(modelPreds)))

