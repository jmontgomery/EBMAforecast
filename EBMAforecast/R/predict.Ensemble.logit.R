predict.Ensemble.logit <-
function(obj, newdata, y.out) {
  num.models <- length(obj$W)
  num.obs <- nrow(newdata)
  PP.matrix <- matrix(NA, nrow=num.obs, ncol=num.models)
  for(k in 1:num.models){
    adj.pred<-blah <- qlogis(newdata[,k])
    negative <- adj.pred<0
    adj.pred <- ((1+abs(adj.pred))^(1/obj$exp))-1
    adj.pred[negative] <- adj.pred[negative]*(-1)
    PP.matrix[,k] <- plogis(obj$model.params[k,1]+obj$model.params[k,2]*adj.pred)
  }
  bma.pred <- as.vector(PP.matrix%*%obj$W)
 #  bma.pred <- PP.matrix%*%obj$W
  
# Calculate Area under ROC Curves
  bma.auc <- as.numeric(somers2(bma.pred,y.out)[1])
  models.auc <- rep(NA, num.models)
  for(i in 1:num.models){models.auc[i] <- somers2(newdata[,i],y.out)[1]}

# Calculate Brier (sp?) statistic
  bma.brier <- mean((y.out-bma.pred)^2)
  models.brier <- rep(NA, num.models)
  for(i in 1:num.models){models.brier[i] <-mean((y.out-newdata[,i])^2)}

# Number predicted right
  bma.num <- sum((bma.pred>.5)*y.out + (bma.pred<.5)*(1-y.out))
  models.num <- rep(NA, num.models)
  for(i in 1:num.models){models.num[i] <- sum((newdata[,i]>.5)*y.out + (newdata[,i]<.5)*(1-y.out))}
  
# Calculate % predicted correctly
  bma.perc <- mean((bma.pred>.5)*y.out + (bma.pred<.5)*(1-y.out))
  models.perc <- rep(NA, num.models)
  for(i in 1:num.models){models.perc[i] <- mean((newdata[,i]>.5)*y.out + (newdata[,i]<.5)*(1-y.out))}

# PRE
  baseline <- sum(y.out)
  bma.pre <- (baseline - (num.obs-bma.num))/baseline
  models.pre <- rep(NA, num.models)
  for(i in 1:num.models){models.pre[i] <- (baseline-(num.obs-models.num[i]))/baseline}


# Sensitivity and specificity
  bma.tp <- sum((bma.pred>.5)*y.out)
  bma.tn <- sum((bma.pred<.5)*(1-y.out))
  bma.fp <- sum((bma.pred>.5)*(1-y.out))
  bma.fn <- sum((bma.pred<.5)*y.out)
  bma.sens <- bma.tp/(bma.tp+bma.fn)
  bma.spec <- bma.tn/(bma.tn+bma.fp)

  models.sens <- models.spec <- models.tp <- models.tn <- models.fp <- models.fn <- rep(NA, num.models)

  for (i in 1:num.models){
    models.tp[i] <- sum((newdata[,i]>.5)*y.out)
    models.tn[i] <- sum((newdata[,i]<.5)*(1-y.out))
    models.fp[i] <- sum((newdata[,i]>.5)*(1-y.out))
    models.fn[i] <- sum((newdata[,i]<.5)*y.out)
  }
    models.sens <- models.tp/(models.tp+models.fn)
    models.spec <- models.tn/(models.tn+models.fp)

  

  model.names <- obj$model.names
   names(models.sens) <- names(models.spec) <- colnames(newdata) <-names(models.brier) <- names(models.pre) <- names(models.perc) <- names(models.auc) <-  model.names
  
  out <- list(W=obj$W, pred.prob=bma.pred, model.params=obj$model.params, exp=obj$exp, model.names=model.names,
              model.pps=newdata,
              bma.auc=bma.auc, models.auc=models.auc,
              bma.brier=bma.brier, models.brier=models.brier,
              bma.perc=bma.perc, models.perc=models.perc,
              bma.pre=bma.pre, models.pre=models.pre,
              bma.sens=bma.sens, models.sens=models.sens,
              bma.spec=bma.spec, models.spec=models.spec,
              dv=y.out, n=num.obs)
  invisible(out)
}

