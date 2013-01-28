 library("multicore")
library("foreach")
library("doMC")
 library(devtools)
 library(roxygen2)
 library(testthat)

setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/Documents/GITHUB/EBMAforecast/")
library(EBMAforecast)

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)


rm(list=ls())
pres <- read.csv("~/Documents/GIT/EBMAforecast/APSA_2012/Data/OutSample_Silver2.csv", as.is=TRUE, header=TRUE)
pres <- read.csv("~/Documents/Github/EBMAforecast/APSA_2012/Data/OutSample_Silver2.csv", as.is=TRUE, header=TRUE)
pres$Hibbs=ifelse(X==2000,53.8,pres$Hibbs) # correction of silver from Hibbs website,
pres$Lewis.Beck.Tien=ifelse(X==1996,54.8,pres$Lewis.Beck.Tien)
pres$Erikson.Wlezien=ifelse(X==1996,54.5,pres$Erikson.Wlezien)




colnames(pres)[1] <- "year"
lewisBeck <- c(pres[1,5], pres[2:5,12]) 
myPres <- cbind(pres$year, pres$Actual, NA, pres$Fair, pres$Abramowitz, pres$Campbell, pres$Hibbs, pres$Lewis.Beck.Tien, pres$Lockerbie, pres$Holbrook, pres$Erikson.Wlezien, pres$Cuzan)
colnames(myPres) <- c("year", "truth", "junk", "Fair", "Abramowitz", "Campbell", "Hibbs", "LewisBeck", "Lockerbie","Holbrook", "Erikson", "Cuzan")
myPres <- data.frame(myPres)
myPres$LewisBeck[1] <- 47.3
myPres[,1] <- as.character(myPres[,1])
myPres



.predThis=5
data=myPres
.minCal=2
.theseRows <- c(1:5)
.const=.05

.selector <- c(rep(TRUE, 11), TRUE)
.reduced <- data[.theseRows, .selector]
.target <- data[5,.selector]

load("~/Documents/GIT/EBMAforecast/PresForecastPS/data_2012.RData")

load("~/Documents/Github/EBMAforecast/PresForecastPS/data_2012.RData")


#pred12<-matrix(c(49.5,50.5,50.6,47.5,47.6,54,47.8,52.6,46.9),nrow=1) ### updated with latest numbers
#pred12 <- matrix(c(49.5, 50.5, 50.6, 47.5, 47.6, 54, 47.8, 52.2, 46.9), nrow=1) #added the Cuzan short FPRIME pred for 2012
#### using the final forecasts of 2012 models
pred12<-matrix(ncol=9,nrow=1,c(49.5,50.6,52.0,47.5,48.2,53.8,47.9,52.6,45.5))

.FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=pred12 
                          ,.outcomeTest=1
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
summary(ensemble, showCoefs=FALSE)
library(xtable)
xtable(summary(ensemble, showCoefs=FALSE)@summaryData)
ensemble@predTest

setwd("~/GitHub/EBMAforecast/APSA_2012/Paper/")
pdf(width=6, height=6, file="presForecast.pdf")
par(mfrow=c(2,1), mar=c(2,2.5,2,.5), tcl=0, mgp=c(1.1,.1,0), cex.lab=.8, cex.main=.9)
plot(ensemble, subset=5, main="2008 (In-sample)", xLab="% Two party vote for incumbent")
plot(ensemble, subset=1, period="test", main="2012 (Out-of-sample)", xLab="% Two party vote for incumbent")
dev.off()



setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Presentation/")
pdf(width=6, height=6, file="presForecast2012.pdf")
par(mfrow=c(2,1), mar=c(2,2.5,2,.5), tcl=0, mgp=c(1.1,.1,0), cex.lab=.8, cex.main=.9)
plot(ensemble, subset=5, main="2008 (In-sample)", xLab="% Two party vote for incumbent")
plot(ensemble, subset=1, period="test", main="2012 (Out-of-sample)", xLab="% Two party vote for incumbent")
dev.off()



modelPreds <- ensemble@predTest[-1]
#.miss <- !is.na(modelPreds)
#modelPreds[!.miss] <- 50.5

#95% Credible interval
touchyQuantBMANormal <- function (alpha, WEIGHTS, MEAN, SD, up, low) 
{
  z <- uniroot(ensembleBMA:::cdfBMAnormal, lower = low, upper = up, 
               WEIGHTS = WEIGHTS, MEAN = MEAN, SD = SD, offset = alpha)
  z$root
}


ensembleBMA:::quantBMAnormal(.05, ensemble@modelWeights, modelPreds, rep(sqrt(ensemble@variance), length(modelPreds)))
ensembleBMA:::quantBMAnormal(.95, ensemble@modelWeights, modelPreds, rep(sqrt(ensemble@variance), length(modelPreds)))


# Prob that Obama wins
1-ensembleBMA:::cdfBMAnormal(50, ensemble@modelWeights, modelPreds, rep(sqrt(ensemble@variance), length(modelPreds)), 0)

