rm(list=ls(all=TRUE))


setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

### need to simulate some data that gives weights 


#set a number of models
nmod<-4

# specify weights, have to some to 1
#weights<-matrix(nrow=50,ncol=4,rep(c(0.4,0.123,0.240,0.237),50),byrow=TRUE)
W<-c(0.4,0.123,0.240,0.237)


#specify number of observations per model in the calibration period
nobs<- 1000
x1<-rnorm(nobs,mean=4,sd=2)
x2<-rnorm(nobs,mean=-2,sd=5)
x3<-rnorm(nobs,mean=7,sd=3)
x4<-rnorm(nobs,mean=14,sd=10)

### dependent variable 
DV<- as.matrix(nrow=nobs,NA)
prob<-rep(NA,nobs)
## trying to think here.....

for(i in 1:nobs){
	prob[i]<-runif(1)
	
	if(prob[i]<=W[1]){
	DV[i]<-rnorm(1,x1[i],sd=.0001)	
	}
	if(prob[i]>W[1] & prob[i]<=W[1]+W[2]){
	DV[i]<-rnorm(1,x2[i],sd=.0001)	
	}
	if(prob[i]>W[1]+W[2] & prob[i]<=W[1]+W[2]+W[3]){
	DV[i]<-rnorm(1,x3[i],sd=.0001)	
	}
	if(prob[i]>W[1]+W[2]+W[3]){
	DV[i]<-rnorm(1,x4[i],sd=.0001)	
	}
}
X<-cbind(x1,x2,x3,x4)
library(EBMAforecast)

test <- makeForecastData(.predCalibration=X,.outcomeCalibration=DV, .modelNames=c("X1","X2","X3","X4"))

thisEnsemble<-calibrateEnsemble(test, model="normal", useModelParams=F, tol=1e-20, maxIter=1e7)
summary(thisEnsemble)
W



### code from normal ensemble function

 
                ## Step 1: Calculate the Z's
                g<- aperm(array(aaply(.data=1:nMod,.margins=1,
                           .fun=function(i,y, mu, sd){
                             dnorm(y,mean=mu[,i,], sd=sd)
                           },
                           y=outcomeCalibration,mu=prediction, sd=sqrt(sigma2))
                          , dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
                z.numerator<- aaply(.data=g, .margins=1, .fun=function(x){x*W})
                z.denom <- aaply(z.numerator, 1, sum, na.rm=T)
                Z <-aperm(array(aaply(z.numerator, 2, function(x){x/z.denom}), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
                Z[Z < ZERO] <- 0

                .missZ <- aaply(Z, 1, .fun=function(x) sum(!is.na(x)*1))
                .adjConst <- const*1/.missZ
                Z <- .adjConst + (1-const)*Z


                
                Z[is.na(Z)] <- 0

                ## Step 2: Calculat the W's
                .unnormalizedW<-aaply(Z, 2, sum, na.rm = TRUE)
                W <- .unnormalizedW
                W <- W/sum(.unnormalizedW)
                W[W<ZERO]<-0
                names(W) <- modelNames
                
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ, na.rm=T)/sum(Z, na.rm=T) 


                ## Step 4: Calculate the log-likelihood
                LL <-sum(log(z.denom))

                out <- list(LL=LL, W=W,sigma2=sigma2)
                return(out)
              }
          

            .predictCal <- function(x){
              .rawPred <- predict(x)
              .outPred <- rep(NA, nObsCal)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }

            
            .modelFitter <- function(preds){
              thisModel <- lm(outcomeCalibration~preds)
              return(thisModel)
            }


            .predictTest <- function(x, i){
              .rawPred <- predict(.models[[i]], newdata=data.frame(preds=x))
              .outPred <- rep(NA, nObsTest)
              .outPred[as.numeric(names(.rawPred))] <- .rawPred
              return(.outPred)
            }
            
            
            ##Extract data
            predCalibration <- getPredCalibration(.forecastData); outcomeCalibration <- getOutcomeCalibration(.forecastData)
            predTest <- getPredTest(.forecastData); outcomeTest <- getOutcomeTest(.forecastData)
            .testPeriod <- length(predTest)>0            
            modelNames <- getModelNames(.forecastData)
            
            ## Set constants
            nMod <-  ncol(predCalibration); nDraws <- dim(predCalibration)[3]
            nObsCal <- nrow(predCalibration); nObsTest <- nrow(predTest)
            ZERO<-1e-4
            
            ## Fit Models
            if(useModelParams==TRUE){.models <- aaply(predCalibration, 2:3, .fun=.modelFitter)}

            ## Extract needed info
            if(nDraws==1 & useModelParams==TRUE){
              predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(nMod, nObsCal, nDraws)), c(2,1,3))
              modelParams <- aperm(array(laply(.models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))
            }
            if(nDraws>1 & useModelParams==TRUE){ # This code is in development for exchangeability
              predCalibrationAdj <- aperm(aaply(.models, 1:2, .predictCal), c(3,1,2))
              modelParams <- aperm(aaply(.models, 1:2, coefficients), c(3,1,2))
            }
            if(useModelParams==FALSE){
              predCalibrationAdj <- predCalibration
              modelParams <- array(c(0,1), dim=c(2,nMod,nDraws))
            }
            calResiduals <- outcomeCalibration-predCalibrationAdj
            calResiduals2 <- calResiduals^2
            
            dimnames(modelParams) <- list(c("Constant", "Predictor"), modelNames, 1:nDraws)
            dimnames(calResiduals) <- dimnames(calResiduals2) <-dimnames(predCalibrationAdj) <- list(1:nObsCal, modelNames, 1:nDraws)

            ## Set initial values for parameters
            W <- rep(1/(nMod), nMod) ; names(W) <- modelNames
            sigma2<-1

            ## Run EM
            .done <- FALSE
            .iter <- 0
            .emOld<-0
            while(.done == FALSE & .iter<maxIter){
              .thisOut <- .em(outcomeCalibration=outcomeCalibration, prediction=predCalibrationAdj, W=W, sigma2=sigma2, RSQ=calResiduals2)
              W <- .thisOut$W
              sigma2<-.thisOut$sigma2
              LL <- .thisOut$LL
              .done <- abs(.emOld-LL)/(1+abs(LL))<tol
              .emOld <- LL
              .iter <- .iter+1
            }
            if (.iter==maxIter){print("WARNING: Maximum iterations reached")}
            W <- W*rowSums(!colSums(predCalibration, na.rm=T)==0); names(W) <- modelNames		