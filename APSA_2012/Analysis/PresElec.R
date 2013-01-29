library("multicore")
library("foreach")
library("doMC")
library(devtools)
library(roxygen2)
library(testthat)
library(plyr)
library(abind)
setwd("~/Documents/GIT/EBMAforecast/")
setwd("~/Documents/GITHUB/EBMAforecast/")
library(EBMAforecast)
library(xtable)


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)


rm(list=ls())
pres <- read.csv("~/Documents/GIT/EBMAforecast/APSA_2012/Data/OutSample_Silver2.csv", as.is=TRUE, header=TRUE)
pres <- read.csv("~/Documents/Github/EBMAforecast/APSA_2012/Data/OutSample_Silver2.csv", as.is=TRUE, header=TRUE)
pres$Campbell =ifelse(pres$X==1992,47.1,pres$Campbell) ##others verified
pres$Lewis.Beck.Tien=ifelse(pres$X==1996,54.8,pres$Lewis.Beck.Tien)
pres$Erikson.Wlezien=ifelse(pres$X==1996,57.2,pres$Erikson.Wlezien)
#1996 Holbrook correct, unsure about Abramowitz, Campbell, need to verify those
pres$Abramowitz=ifelse(pres$X==1996,56.8,pres$Abramowitz)
pres$Campbell =ifelse(pres$X==1996,58.1,pres$Campbell)

#2000 all okay, aside from hibbs
pres$Hibbs=ifelse(pres$X==2000,53.8,pres$Hibbs) # correction of silver from Hibbs website,
pres$Campbell=ifelse(pres$X==2004,53.8,pres$Campbell) # correction of silver from Hibbs website,
pres$Erikson.Wlezien=ifelse(pres$X==2004,52.3,pres$Erikson.Wlezien) # correction of silver from Hibbs website,
pres$Holbrook=ifelse(pres$X==2004,54.5,pres$Holbrook) # correction of silver from Hibbs website,
pres$Cuzan=ifelse(pres$X==2004,52.8,pres$Cuzan) # correction of silver from Hibbs website,
#2008
pres$Cuzan=ifelse(pres$X==2008,48.0,pres$Cuzan) # correction of silver from Hibbs website,
pres$Lewis.Beck.Tien=ifelse(pres$X==2008,49.9,pres$Lewis.Beck.Tien) #depends if we want to stick with this model or use their prefered model 
pres$Hibbs=ifelse(pres$X==2008,48.2,pres$Hibbs) #depends if we want to stick with this model or use their prefered model 

#rest okay


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
.const=0.05

.selector <- c(rep(TRUE, 11), TRUE)
.reduced <- data[.theseRows, .selector]
.target <- data[5,.selector]

load("~/Documents/GIT/EBMAforecast/PresForecastPS/data_2012.RData")

load("~/Documents/Github/EBMAforecast/PresForecastPS/data_2012.RData")

xtable(pres)
#pred12<-matrix(c(49.5,50.5,50.6,47.5,47.6,54,47.8,52.6,46.9),nrow=1) ### updated with latest numbers
#pred12 <- matrix(c(49.5, 50.5, 50.6, 47.5, 47.6, 54, 47.8, 52.2, 46.9), nrow=1) #added the Cuzan short FPRIME pred for 2012
#### using the final forecasts of 2012 models
pred12<-matrix(ncol=9,nrow=1,c(49.5,50.6,52.0,47.5,48.2,53.8,47.9,52.6,46.9)) # changed cuzan to their preferred forecast

.FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=pred12 
                          ,.outcomeTest=51.9
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
summary(ensemble, showCoefs=FALSE)
xtable(summary(ensemble, showCoefs=FALSE)@summaryData)
ensemble@predTest

setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Paper/")
setwd("~/GitHub/EBMAforecast/APSA_2012/Paper/")
pdf(width=6, height=6, file="presForecast.pdf")
par(mfrow=c(2,1), mar=c(2,2.5,2,.5), tcl=0, mgp=c(1.1,.1,0), cex.lab=.8, cex.main=.9)
plot(ensemble, subset=5, main="2008 (In-sample)", xLab="% Two party vote for incumbent")
plot(ensemble, subset=1, period="test", main="2012 (Out-of-sample)", xLab="% Two party vote for incumbent")
dev.off()



##### for paper run EBMA model with c=0.00

.const1=0.00

ensemble1 <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const1)
summary(ensemble, showCoefs=FALSE)
ensemble1@predTest

##### for paper run EBMA model with c=1.00

.const2=0.1

ensemble2 <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const2)
summary(ensemble2, showCoefs=FALSE)
ensemble2@predTest





### table for paper 
mean_pred2012=mean(pred12)
median_pred2012=median(pred12)
ensemble1@predTest[1]
ensemble@predTest[1]
ensemble2@predTest[1]

table_12_pred=c(mean_pred2012,median_pred2012,ensemble1@predTest[1],ensemble@predTest[1],ensemble2@predTest[1])
table_12_pred=round(table_12_pred,1)
table_12_error=abs(table_12_pred-51.9)

table_12=as.data.frame(rbind(table_12_pred, table_12_error))
names(table_12)=c("Mean","Median","c=0","c=0.05","c=0.1")
rownames(table_12)=c("2012 prediction","Absolute Error")
xtable(table_12)



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

