rm(list=ls(all=TRUE))

##### testing the function to 
### read in data
setwd("~/Dropbox/EBMA/ReplicationFiles/ForPADataverse/")
library(foreign)
library(nls2)
#library(EBMAforecast)
library(plyr)

hibbspreds <- read.csv("Prediction_hibbs.csv") # Hibbs predictive intervals generated in Stata.  See *.do file.
master.data<-read.csv("presdata.csv") # read in data

tyn = 14
a = 1
train.years =  13
hibbpreds=hibbspreds
   master.years <- seq(1952, 2008, by=4)
   in.data <- matrix(NA, (tyn-1), 6)
   out.data <- matrix(NA, 1, 6)
   rownames(in.data) <- master.years[1:(tyn-1)]
   rownames(out.data) <- master.years[tyn]
   colnames(out.data) <- colnames(in.data) <- c("Campbell", "Lewis-Beck", "EWT2C2", "Fair", "Hibbs", "Abramowitz")
   in.master <- master.data[master.data$year >=1952 & master.data$year<master.years[tyn],] #Validation period
   out.master <- master.data[master.data$year == master.years[tyn],] # Test period

   # Fit each of the models on the training data, and estimate y.hat for the validation period
   c.model <- lm(dv~septpoll+gdpqtr2half, data=master.data[master.data$year<master.years[tyn],]) #Training period
   in.data[,1] <- predict(c.model, newdata=in.master) # Validation Period
   out.data[,1] <- predict(c.model, newdata=out.master) #Test Period
    
   lb.model <- lm(dv ~ julypop + incxgnp + jobhousu + closeinc, data=master.data[master.data$year<master.years[tyn],])
   in.data[,2] <- predict(lb.model, newdata=in.master)
   out.data[,2] <- predict(lb.model, newdata=out.master)
   
   ew.model <- lm(dv ~ l1cumleigrowth + incumbentpoll, data=master.data[master.data$year<master.years[tyn],])
   in.data[,3] <- predict(ew.model, newdata=in.master)
   out.data[,3] <- predict(ew.model, newdata=out.master)

   fair.model <- lm(dv ~ G + P + Z + adper + adur + war + I, data=master.data[master.data$year<master.years[tyn],])
   in.data[,4] <- predict(fair.model, newdata=in.master)
   out.data[,4] <- predict(fair.model, newdata=out.master)

   hibbs.model <- nls(dv ~ beta0 + bdlnr* (((1.0*wtq16*dnlr) + (g*dnlr.L1) + ((g^2)*dnlr.L2) + ((g^3)*dnlr.L3) +
                                             ((g^4)*dnlr.L4) + ((g^5)*dnlr.L5) + ((g^6)*dnlr.L6) + ((g^7)*dnlr.L7) +
                                             ((g^8)*dnlr.L8) + ((g^9)*dnlr.L9) + ((g^10)*dnlr.L10) + ((g^11)*dnlr.L11) +
                                             ((g^12)*dnlr.L12)+ ((g^13)*dnlr.L13)+ ((g^14)*dnlr.L14))/
                                            (1.0*wtq16 + g + g^2 + g^3 + g^3 + g^4 + g^5 + g^6 + g^7 + g^8 + g^9 +
                                             g^10 + g^11 + g^12 + g^13 + g^14)) + bkia*fatalities,
                      start=list(beta0=45, g=0.95, bdlnr=4, bkia=-0.1),
                      data=master.data[master.data$year<master.years[tyn],])
   in.data[,5] <- predict(hibbs.model, newdata=in.master)
   out.data[,5] <- predict(hibbs.model, newdata=out.master)
   
   ab.model <- lm(dv~q2gdp+term+juneapp,data=master.data[master.data$year<master.years[tyn],])
   in.data[,6] <- predict(ab.model, newdata=in.master)
   out.data[,6] <- predict(ab.model, newdata=out.master)

   
   # Now fit the ebma model
    full.forecasts <- rbind(in.data, out.data) 
    full.observed <- c(master.data$dv[10:(9+tyn)])

this.ForecastData<-makeForecastData(.predCalibration=in.data, .outcomeCalibration=full.observed[1:tyn-1],.predTest=out.data,.outcomeTest=full.observed[tyn], .modelNames=c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"))    
#this.ForecastData
.forecastData <- this.ForecastData
print(this.ForecastData)
in.data2 <- array(in.data, dim=c(14,6,2))
out.data2 <- array(out.data, dim=c(1,6,2))
dim(out.data)
#dimnames(in.data2) <- list(c(1:14), c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"), c(1:2))
str(in.data2)
getModelNames(.forecastData    )

this.ForecastData2<-makeForecastData(.predCalibration=in.data2, .outcomeCalibration=full.observed[1:14],.predTest=out.data2,.outcomeTest=full.observed[tyn+1], .modelNames=c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"))    
.forecastData2 <- this.ForecastData
.forecastData2

###
#library(abind)
#testArray <- array(c(1,2,3,4,5,6,7,8), dim=c(2,2,2))
#testArray
#testVec <- matrix(c(9,10, rep(NA, 2)), ncol=2, nrow=2)
#testVec <- array(testVec, dim=c(2,1,2))
#dim(testVec)
#testVec
#abind(testArray, testVec, along=2)
