rm(list=ls(all=TRUE))

##### testing the function to 
### read in data
setwd("~/Dropbox/EBMA/ReplicationFiles/ForPADataverse/")
library(foreign)
library(nls2)
library(EBMAforecast)
library(plyr)

hibbspreds <- read.csv("Prediction_hibbs.csv") # Hibbs predictive intervals generated in Stata.  See *.do file.
master.data<-read.csv("presdata.csv") # read in data

tyn = 15
a = 1
train.years =  14
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
    
    
this.ForecastData<-makeForecastData(.predCalibration=in.data, .outcomeCalibration=full.observed[1:14],.predTest=out.data,.outcomeTest=full.observed[15], .modelNames=c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"))    
in.data2 <- array(in.data, dim=c(14,6,2))
dimnames(in.data2)
names(in.data2)
str(in.data2)


this.ForecastData<-makeForecastData(.predCalibration=in.data2, .outcomeCalibration=full.observed[1:14],.predTest=out.data,.outcomeTest=full.observed[15], .modelNames=c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"))    


####
####

n.models <- 5
n.obs <- 20
n.draws <- 1
#rawPredictions <- matrix(rnorm(n.models*n.obs, mean=50, sd=5), ncol=n.models)
#rawPredictions[2,4] <- rawPredictions[17,2] <- NA
rawPredictions <-
  array(rnorm(n.models*n.obs*n.draws, mean=50, sd=5), dim=c(n.obs, n.models, n.draws))
rawPredictions[2,4,1] <- rawPrediction)
s[17,2,2] <- NA
rawPredictions
rawPredictions[,4,2] <- NA
rawPredictions
y <- matrix(rnorm(n.obs, mean=50, sd=5),ncol=1)
sigma2 <- var(y)
W <- rep(1/n.models, n.models)


ZERO<-1e-4 

RSQ <-  array(rnorm(n.models*n.obs*n.draws, mean=50, sd=5), dim=c(n.obs, n.models, n.draws))
  
aperm(g[1,,], c(1,2,3))


       my.em <- function(y, rawPredictions, W, sigma2)
              {
                act.outcomes <- y
                raw.predictions <- rawPredictions
                
                ## Step 1: Calculate the Z's
                g<- t(aaply(.data=1:n.models,.margins=1,
                            .fun=function(i,y, mu, sd){
                              dnorm(y,mean=mu[,i], sd=sd)
                            },
                            y=act.outcomes,mu=raw.predictions, sd=sqrt(sigma2)))
                
                z.numerator<- aaply(.data=g, .margins=1, .fun=function(x){x*W})
                z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                z.denom <- z.denom/aaply(g, 1, .fun=function(x) sum((!is.na(x)*1)*W))
                Z <- t(aaply(z.numerator, 2, function(x){x/z.denom}))
                Z[Z < ZERO] <- 0
                Z[is.na(Z)] <- 0
                
                
                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW/sum(.unnormalizedW) 
                W[W<ZERO]<-0
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 
                
                ## Step 4: Calculate the log-likelihood
                LL <-sum(log(z.denom))
                
                out <- list(LL=LL, W=W,sigma2=sigma2)
                return(out)
              }

