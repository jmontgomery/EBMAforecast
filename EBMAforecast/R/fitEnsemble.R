##
#' Function for actually fitting an EBMA model based on the calibration dataset
#'
#' The description goes here
#'`
#' @param .forecastData An object of class 'ForecastData' that will be used to calibrate the model
#' @param exp The exponent 
#' @param tol The tolerance for the EM algorithm
#' @param maxIter The number of iterations
#' @param method The estimation method used.  Currently only implements "EM"
#' @param ... Not implemented
#'
#' @return A data object of the class 'FDatFitLogit' 
#'
#' @author Michael D. Ward and Jacob M. Montgomery
#'
#' @references Montgomery, Hollenbach, and Ward (2012). etc.
#'
#' @seealso ensembleBMA, other functions
#' @export
setGeneric(name="fitEnsemble",
           def=function(.forecastData, exp=1, tol=.001,maxIter=10000, method="EM", ...)
           {standardGeneric("fitEnsemble")}
           )


#' Method for logit
#' @rdname fitEnsemble-methods
#' @aliases fitEnsemble
#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataLogit"),
          definition=function(.forecastData, exp, tol, maxIter, method)
          {

            
            my.em <- function(y, PP.matrix, W, PP.W, z.numerator)
              {

                ## Step 1: Calculate the Z's
                z.numerator.one <- t(apply(PP.matrix, 1, function(x){x*W}))
                z.numerator.zero <- t(apply((1-PP.matrix), 1, function(x){x*W}))
                z.numerator[y==1,] <- z.numerator.one[y==1,]
                z.numerator[y==0,] <- z.numerator.zero[y==0,]
                Z <- apply(z.numerator, 2, function(x){x/PP.W})

                ## Step 2: Calculat the W's
                W <- colMeans(Z)

                ## Step 3: Calculate the log-likelihood
                PP.W.one <- PP.matrix%*%W
                PP.W.zero <- (1-PP.matrix)%*%W
                PP.W[y==1] <- PP.W.one[y==1]
                PP.W[y==0] <- PP.W.zero[y==0]
                LL <-sum(log(PP.W))
                
                ## Output: Log-liklihood, PP.W, and Model Weights
                out <- list(LL=LL, PP.W=PP.W, W=round(W, 5))
                return(out)
              }

            pp.raw <- .forecastData@predCalibration
            y <- .forecastData@outcomeCalibration
            modelNames <- .forecastData@modelNames
            
            num.models <- ncol(pp.raw)
            num.obs <- length(y)


            ## Initiate a couple of useful matrices
            PP.matrix <- matrix(NA, nrow=num.obs, ncol=num.models)
            log.lik <- rep(NA, num.models)
            model.params <- matrix(NA, nrow=2, ncol=num.models)
            colnames(model.params)=modelNames
            rownames(model.params) <- c("Constant", "Predictor")
  
  
            ## Fit all of the basic logit model
            for(k in 1:num.models){
              adj.pred<-qlogis(pp.raw[,k])
              negative <- adj.pred<0
              adj.pred <- ((1+abs(adj.pred))^(1/exp))-1
              adj.pred[negative] <- adj.pred[negative]*(-1)
              this.model <- glm(y~adj.pred, family="binomial")
              log.lik[k] <- this.model$deviance/(-2)
              model.params[,k] <- this.model$coefficients
              PP.matrix[,k] <- fitted(this.model)
            }

            W <- rep(1/k, k) #Start values for vector of Probability Weights

            ## Initiate a couple more useful matrices
            PP.W <- rep(NA, num.obs)
            z.numerator <- matrix(NA, nrow=num.obs, ncol=num.models)
            
            ## Go through first iteration of EM
            PP.W.one <- PP.matrix%*%W
            PP.W.zero <- (1-PP.matrix)%*%W
            PP.W[y==1] <- PP.W.one[y==1]
            PP.W[y==0] <- PP.W.zero[y==0]

            this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
            W <- this.out$W
            PP.W <- this.out$PP.W
            em.old <- this.out$LL
            
            ## Now loop the EM until reach tolerance or maximum iterations
            done <- FALSE
            iter <- 1

            while(done == FALSE & iter<maxIter){
              this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
              W <- this.out$W
              PP.W <- this.out$PP.W
              done <- abs(em.old-this.out$LL)<tol
              em.old <- this.out$LL
              iter <- iter+1
            }
            if (iter==maxIter){print("WARNING: Maximum iterations reached")}
            final.pp <- PP.matrix%*%W

            
            ## Merge the EBMA forecasts for the calibration sample onto the predCalibration matrix
            cal <- cbind(final.pp, .forecastData@predCalibration)
            colnames(cal) <- c("EBMA", modelNames)

            ##If the test period data is included, calculate the EBMA forecast for the test period and merge onto predTest
            if(length(.forecastData@predTest)>0){
                bma.pred <- as.vector(PP.matrix%*%W)
                test <- cbind(bma.pred, .forecastData@predTest)
                colnames(test) <- c("EBMA", modelNames)
            }
            else {test <- .forecastData@predTest}

            ##
            names(W) <- modelNames

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


#' Method for normal
#' @rdname fitEnsemble-methods
#' @aliases fitEnsemble
#' @export
setMethod(f="fitEnsemble",
          signature(.forecastData="ForecastDataNormal"),
          definition=function(.forecastData, exp, tol, maxIter, method)
          {print("sorry .... we haven't implemented that yet")}
          )
