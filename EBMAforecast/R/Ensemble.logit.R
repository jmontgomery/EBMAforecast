#What is needed:
 setClass(Class = "",
 representation = representation(values),
          validity=function(){# A function to look at opbject and make sure it makes sense},
prototype=prototype() # defaults
)
# can alternatively use the "setValidity(), #representation(), and #prototype() commands



setGeneric()
#> setGeneric (
#+ name= "countMissing",
#+ def=function(object){standardGeneric("countMissing")}
#+ )
#[1] "countMissing"
#This add countMissing to the list of the methods that R knows. We can now deﬁne
#more speciﬁcally countMissing for the object trajectories:

setMethod() # This is how we make a new function for the class we are working on
# will also want to set the method for the "initialize" function to fine tune how an object is created.  But will need to use the validObject() command within it

# Will need a
          # 1) user friendly constructor
          # 2) accessors ... both get and set functions. (see section 7)
          
# Section 9 explains inheritance and section 10 explains internal modifications and easy handling of the environment

          
# some utilities
slotNames()
getSlots()
getClass()
showMethods()
existsMethod()

                                        #' The length of a string (in characters).
                                        #'
                                        #' @param string input character vector
                                        #' @return numeric vector giving number of characters in each element of the
                                        #'   character vector.  Missing string have missing length.
                                        #' @keywords character
                                        #' @seealso \code{\link{nchar}} which this function wraps
                                        #' @export 
                                        #' @examples
                                        #' str_length(letters)
                                        #' str_length(c("i", "like", "programming", NA))
          str_length <- function(string) { 
            string <- check_string(string) 
            nc <- nchar(string, allowNA = TRUE)
            is.na(nc) <- is.na(string)
            nc
          } 


          
Ensemble.logit <-
function(y, pp.raw, exp=3, tol=.001, max.iter=10000, model.names=NULL){

my.em <- function(y, PP.matrix, W, PP.W, z.numerator)
   {

   # Step 1: Calculate the Z's
     z.numerator.one <- t(apply(PP.matrix, 1, function(x){x*W}))
     z.numerator.zero <- t(apply((1-PP.matrix), 1, function(x){x*W}))
     z.numerator[y==1,] <- z.numerator.one[y==1,]
     z.numerator[y==0,] <- z.numerator.zero[y==0,]
     Z <- apply(z.numerator, 2, function(x){x/PP.W})

     # Step 2: Calculat the W's
     W <- colMeans(Z)

    # Step 3: Calculate the log-likelihood
     PP.W.one <- PP.matrix%*%W
     PP.W.zero <- (1-PP.matrix)%*%W
     PP.W[y==1] <- PP.W.one[y==1]
     PP.W[y==0] <- PP.W.zero[y==0]
     LL <-sum(log(PP.W))

     ### Output: Log-liklihood, Funny PP.W, and Model Weights
     out <- list(LL=LL, PP.W=PP.W, W=round(W, 5))
     return(out)
}

  
  if(sum(pp.raw<0 | pp.raw>1)>0) {
    print("Error:Values greater than 1 or less than 0 included")
    stop  # Re-setting negative pred.prob to zero
    }
  num.models <- ncol(pp.raw)
  num.obs <- length(y)

  # Initiate a couple of useful matrices
  PP.matrix <- matrix(NA, nrow=num.obs, ncol=num.models)
  log.lik <- rep(NA, num.models)
  model.params <- matrix(NA, nrow=2, ncol=num.models)
  rownames(model.params) <- c("Constant", "Predictor")
  
  
  # Fit all of the basic logit model
  for(k in 1:num.models){
    adj.pred<-qlogis(pp.raw[,k])
    negative <- adj.pred<0
    adj.pred <- ((1+abs(adj.pred))^(1/exp))-1
    adj.pred[negative] <- adj.pred[negative]*(-1)
#    pred <- qlogis(pp.raw[,k])^(1/exp)
    this.model <- glm(y~adj.pred, family="binomial")
    log.lik[k] <- this.model$deviance/(-2)
    model.params[,k] <- this.model$coefficients
    PP.matrix[,k] <- fitted(this.model)
  }

 # return(PP.matrix)
 # stop


  W <- rep(1/k, k) #Start values for vector of Probability Weights
  # Initiate a couple more useful matrices
  PP.W <- rep(NA, num.obs)
  z.numerator <- matrix(NA, nrow=num.obs, ncol=num.models)
 
  # Go through first iteration of EM
  PP.W.one <- PP.matrix%*%W
  PP.W.zero <- (1-PP.matrix)%*%W
  PP.W[y==1] <- PP.W.one[y==1]
  PP.W[y==0] <- PP.W.zero[y==0]

  this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
  W <- this.out$W
  PP.W <- this.out$PP.W
  em.old <- this.out$LL

  # Now loop the EM until reach tolerance or maximum iterations
  done <- FALSE
  iter <- 1

  while(done == FALSE & iter<max.iter){
   this.out <- my.em(y=y, PP.matrix=PP.matrix, W=W, PP.W=PP.W, z.numerator=z.numerator)
   W <- this.out$W
   PP.W <- this.out$PP.W
   done <- abs(em.old-this.out$LL)<tol
   em.old <- this.out$LL
   iter <- iter+1
 }
  if (iter==max.iter){print("WARNING: Maximum iterations reached")}
  final.pp <- PP.matrix%*%W

  

  if (is.null(model.names)){model.names<-colnames(pp.raw)}
  if (is.null(model.names)){
     model.names<-rep(NA, num.models)
     for (i in 1:num.models){model.names[i]<-paste("Model", i)}   
  }


# Calculate Area under ROC Curves
  bma.auc <- as.numeric(somers2(final.pp,y)[1])
  models.auc <- rep(NA, num.models)
  for(i in 1:num.models){models.auc[i] <- somers2(pp.raw[,i],y)[1]}

# Calculate Brier (sp?) statistic
  bma.brier <- mean((y-final.pp)^2)
  models.brier <- rep(NA, num.models)
  for(i in 1:num.models){models.brier[i] <-mean((y-pp.raw[,i])^2)}

# Number predicted right
  bma.num <- sum((final.pp>.5)*y + (final.pp<.5)*(1-y))
  models.num <- rep(NA, num.models)
  for(i in 1:num.models){models.num[i] <- sum((pp.raw[,i]>.5)*y + (pp.raw[,i]<.5)*(1-y))}
  
# Calculate % predicted correctly
  bma.perc <- mean((final.pp>.5)*y + (final.pp<.5)*(1-y))
  models.perc <- rep(NA, num.models)
  for(i in 1:num.models){models.perc[i] <- mean((pp.raw[,i]>.5)*y + (pp.raw[,i]<.5)*(1-y))}

# PRE
  baseline <- sum(y)
  bma.pre <- (baseline - (num.obs-bma.num))/baseline
  models.pre <- rep(NA, num.models)
  for(i in 1:num.models){models.pre[i] <- (baseline-(num.obs-models.num[i]))/baseline}

# Sensitivity and specificity
  bma.tp <- sum((final.pp>.5)*y)
  bma.tn <- sum((final.pp<.5)*(1-y))
  bma.fp <- sum((final.pp>.5)*(1-y))
  bma.fn <- sum((final.pp<.5)*y)
  bma.sens <- bma.tp/(bma.tp+bma.fn)
  bma.spec <- bma.tn/(bma.tn+bma.fp)

  models.sens <- models.spec <- models.tp <- models.tn <- models.fp <- models.fn <- rep(NA, num.models)

  for (i in 1:num.models){
    models.tp[i] <- sum((pp.raw[,i]>.5)*y)
    models.tn[i] <- sum((pp.raw[,i]<.5)*(1-y))
    models.fp[i] <- sum((pp.raw[,i]>.5)*(1-y))
    models.fn[i] <- sum((pp.raw[,i]<.5)*y)
  }
    models.sens <- models.tp/(models.tp+models.fn)
    models.spec <- models.tn/(models.tn+models.fp)
  
  
  

  names(models.sens) <- names(models.spec) <- names(models.brier) <- names(models.pre) <- names(models.perc) <- names(models.auc) <- names(W) <- colnames(model.params) <-  colnames(pp.raw)<-model.names




Ensemble.output <- list(W=W, log.lik=em.old, pred.prob=as.vector(final.pp), model.params=t(model.params), exp=exp,
                        model.names=model.names,
                        model.pps=pp.raw,
                        bma.brier=bma.brier, models.brier=models.brier,
                        bma.perc=bma.perc, models.perc=models.perc,
                        bma.pre=bma.pre, models.pre=models.pre,
                        bma.auc=bma.auc, models.auc=models.auc,
                        bma.sens=bma.sens, models.sens=models.sens,
                        bma.spec=bma.spec, models.spec=models.spec,
                        dv=y, n=num.obs)
  invisible(Ensemble.output)
}

plot.Ensemble.logit<-function(obj){
    num.models <- length(obj$W)
    par(mgp=c(1, 0, 0), lend = 2, mar=c(1,0,1,0), mfrow=c(num.models+1, 1))
    separationplot(pred=obj$pred.prob, actual=obj$dv, heading="EBMA", newplot=F)
    for(i in 1:num.models){
      separationplot(pred=obj$model.pps[,i], actual=obj$dv, heading=obj$model.names[i], newplot=F)
    }
  }


print.Ensemble.logit<-function(obj, digits=3){

    num.models <- length(obj$model.names)
    out<-matrix(NA, ncol=9, nrow=(num.models+1))
    dimnames(out) <- list(c(obj$model.names, "BMA"), c("Weight", "Constant", "Predictor", "AUC", "PRE", "Brier", "% Correct", "Sensitivity", "Specificity"))

    out[1:num.models,1] <- obj$W
    out[1:num.models,2:3] <- obj$model.params
    out[,4] <- c(obj$models.auc, obj$bma.auc)
    out[,5] <- c(obj$models.pre, obj$bma.pre)
    out[,6] <- c(obj$models.brier, obj$bma.brier)
    out[,7] <- c(obj$models.perc*100, obj$bma.perc*100)
    out[,8] <- c(obj$models.sens, obj$bma.sens)
    out[,9] <- c(obj$models.spec, obj$bma.spec)
    
    
    out.print<-round(out, digits=digits)
    out.print[,7]<-round(out[,7], digits=(digits-2))
    print(out.print, na.print="  -  ")
    bias.print <- paste("Bias correction parameter =", obj$exp)
    names(bias.print) <- ""
    print(bias.print, quote=FALSE)
    n.print <- paste("Number of observations =", obj$n)
    names(n.print) <- ""
    print(n.print, quote=FALSE)
    invisible(out)
  }
