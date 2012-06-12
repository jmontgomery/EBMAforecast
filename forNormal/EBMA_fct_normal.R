rm(list=ls(all=TRUE))

##### testing the function to 
### read in data
setwd("~/Dropbox/Duke/Rcode/EBMA_normal_start/MHWarchive4PA/")
library(foreign)
library(nls2)
library(EBMAforecast)

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

   # record the predictive invervals for each individual function
   sixseven <- matrix(nrow=6, ncol=2)
   sixseven[1,]=predict(c.model, newdata=out.master, interval="prediction", level=.67)[2:3]
   sixseven[2,]=predict(lb.model, newdata=out.master, interval="prediction", level=.67)[2:3]
   sixseven[3,]=predict(ew.model, newdata=out.master, interval="prediction", level=.67)[2:3]
   sixseven[4,]=predict(fair.model, newdata=out.master, interval="prediction", level=.67)[2:3]
   sixseven[5,]=c(hibbspreds$X66_low[hibbspreds$Year==master.years[tyn]], hibbspreds$X66_high[hibbspreds$Year==master.years[tyn]]) # Read in from external file
   sixseven[6,]=predict(ab.model, newdata=out.master, interval="prediction", level=.67)[2:3]

   ninezero <- matrix(nrow=6, ncol=2)
   ninezero[1,]=predict(c.model, newdata=out.master, interval="prediction", level=.90)[2:3]
   ninezero[2,]=predict(lb.model, newdata=out.master, interval="prediction", level=.90)[2:3]
   ninezero[3,]=predict(ew.model, newdata=out.master, interval="prediction", level=.90)[2:3]
   ninezero[4,]=predict(fair.model, newdata=out.master, interval="prediction", level=.90)[2:3]
   ninezero[5,]=c(hibbspreds$X90_low[hibbspreds$Year==master.years[tyn]], hibbspreds$X90_high[hibbspreds$Year==master.years[tyn]]) 
   ninezero[6,]=predict(ab.model, newdata=out.master, interval="prediction", level=.90)[2:3]
   
   # Now fit the ebma model
    full.forecasts <- rbind(in.data, out.data) 
    full.observed <- c(master.data$dv[10:(9+tyn)])
    
    
this.ForecastData<-makeForecastData(.predCalibration=in.data, .outcomeCalibration=full.observed[1:14],.predTest=out.data,.outcomeTest=full.observed[15], .modelNames=c("Campbell", "Lewis-Beck",   "EWT2C2",     "Fair",    "Hibbs", "Abramowitz"))    
.forecastData=this.ForecastData    


#ignore when testing
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, exp, tol, maxIter, method)
          {
### start her to test function
            .forecastData=this.ForecastData
            exp=3
            tol=1.490116e-08  # this is the tolerance that is default in the raftery package if it's not specified, i.e. we need to run it with this to get the results in the paper 
            maxIter=1000
            ZERO<-1e-4 # as in their code
           my.em <- function(y, PP.matrix, W, PP.W, z.numerator)
              {
                ## Step 1: Calculate the Z's
                # g is the function as in the paper, this copied from their code
                g<-as.matrix(data.frame(lapply(1:num.models, function(i,y,mu,sd){dnorm(y,mean=mu[,i],sd=sd)},y=y,mu=PP.matrix,sd=sqrt(sigma2))))
				# g multiplied with the weights, as in the paper	
				z.numerator<-sweep(g,MARGIN=2,FUN="*",STATS=W)	
	
                #bottom of fraction in paper (also as in their code)
                z.denom <- apply(z.numerator, 1, sum)
                
                #this calculates the actual Z (from their code)
        		Z <- sweep(z.numerator, MARGIN = 1, FUN = "/", STATS = z.denom)
                #Z <- apply(z.numerator, 2, function(x){x/z.denom})
				Z[Z < ZERO] <- 0
                
                
                ## Step 2: Calculat the W's
                ## this is how raftery et al do it
                other<- apply(Z, 2, sum, na.rm = TRUE)
        		W <- other/sum(other) # I would just do colMeans(Z) but then results are minimally different
                W[W<ZERO]<-0
                ## Step 3: Calculate sigma squared
                sigma2<-sum(Z * RSQ)/sum(Z) # again as done in their code
				#sigma2<-sum(colMeans(error))/num.obs #my first try, might be the same
				### if specified all this is taken from their EM algorith, which is from line 143-177 in the file raftery_edit in the direct. 
				
                ## Step 3: Calculate the log-likelihood
                PP.W <- z.denom
                LL <-sum(log(PP.W))

                ## Output: Log-liklihood, PP.W, and Model Weights
                out <- list(LL=LL, PP.W=PP.W, W=W,sigma2=sigma2)
                return(out)
              }

            ## See whether test period is also being calculated
            testPeriod <- length(.forecastData@predTest)>0

            pp.raw <- .forecastData@predCalibration
            y <- .forecastData@outcomeCalibration
            if(testPeriod){
              pp.raw.test <- .forecastData@predTest
              }
            modelNames <- .forecastData@modelNames


            ## Calculate useful constants
            num.models <- ncol(pp.raw)
            num.obs <- nrow(pp.raw)
            if(testPeriod) num.obs.test <- nrow(pp.raw.test)

            ## Initiate a couple of useful matrices
            PP.matrix <- matrix(NA, nrow=num.obs, ncol=num.models)
            PP.resid<-matrix(NA, nrow=num.obs, ncol=num.models)
            RSQ<-matrix(NA, nrow=num.obs, ncol=num.models)
            if(testPeriod){PP.test.matrix <- matrix(NA, nrow=num.obs.test, ncol=num.models); PP.test.resid <- matrix(NA, nrow=num.obs.test, ncol=num.models)}
            log.lik <- rep(NA, num.models)
            model.params <- matrix(NA, nrow=2, ncol=num.models)
            colnames(model.params)=modelNames
            rownames(model.params) <- c("Constant", "Predictor")
  
  
            ## Fit all of the basic ols models but we are not doing this, instead constrain to a_k0=0, a_k1=1 as in PA paper 
            for(k in 1:num.models){
              adj.pred<-pp.raw[,k]
              ### adjument done here for logit
              this.model <- lm(y~adj.pred)
              #log.lik[k] <- logLik(this.model)
              #this.model$coefficients<-c(0,1)
              model.params[,k] <- c(0,1) 
              PP.matrix[,k] <- pp.raw[,k]
              PP.resid[,k]<-(y-PP.matrix[,k]) #as in their code line 134
              RSQ[,k]<-(y-PP.matrix[,k])^2 
              if(testPeriod){
                adj.pred <- pp.raw.test[,k]
                ## adjustment done here for logit
                PP.test.matrix[,k] <- adj.pred #predict(this.model, newdata=as.data.frame(adj.pred), type="response")
              }
            }

            W <- rep(1/k, k) #Start values for vector of Probability Weights

            ## Initiate a couple more useful matrices
            PP.W <- rep(NA, num.obs)
            z.numerator <- matrix(NA, nrow=num.obs, ncol=num.models)
            
            ## Go through first iteration of EM
            sigma2<-var(y) # use sd of dependent var as starting value for the draw from normal dist.
            
            #this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
            #W <- this.out$W
            #PP.W <- this.out$PP.W
            #sigma2<- this.out$sigma2
            #em.old <- LL #this.out$LL
            #abs(em.old-LL)/(1+abs(LL))<tol
            
            ## Now loop the EM until reach tolerance or maximum iterations
            done <- FALSE
            iter <- 0
			em.old<-0
			
            while(done == FALSE & iter<maxIter){
              this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
              W <- this.out$W
              PP.W <- this.out$PP.W
              sigma2<-this.out$sigma2
              done <- abs(em.old-this.out$LL)/(1+abs(this.out$LL))<tol ## changed this to as it is in their code, line 179
              em.old <- this.out$LL
              iter <- iter+1
            }
            if (iter==1000){print("WARNING: Maximum iterations reached")}
            final.pp <- PP.matrix%*%W

            
            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            cal <- cbind(final.pp, .forecastData@predCalibration)
            colnames(cal) <- c("EBMA", modelNames)

            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
            if(testPeriod){
                bma.pred <- as.vector(PP.test.matrix%*%W)
                test <- cbind(bma.pred, .forecastData@predTest)
                colnames(test) <- c("EBMA", modelNames)
            }
            else{test <- .forecastData@predTest}

            ##
            names(W) <- modelNames
##stop testing here
            new("FDatFitLogit",
                predCalibration=cal,
                outcomeCalibration=y,
                predTest=test,
                outcomeTest=.forecastData@outcomeTest,
                modelNames=modelNames,
                modelWeights=W,
                modelParams=t(model.params),
                logLik=em.old,
                exp=exp,
                tol=tol,
                maxIter=maxIter,
                method=method,
                call=match.call()
                )
          }
          )


