library(EBMAforecast)
<<<<<<< Updated upstream
library(gtools)
=======
demo(EBMAforecast)
>>>>>>> Stashed changes

#simulate some data 
N = 200

alpha<-c(10,5,3)
weights = rdirichlet(N, alpha)

m1 = runif(N, c(0,.75))
m2 = runif(N, c(0,.75))
m3 = runif(N, c(0,.75))
W = c(0.2,0.2,0.6)
prob = weights[,1]*m1 + weights[,2]*m2 + weights[,3]*m3

outcome = rbinom(N,1,prob )

preds = (data.frame(m1,m2,m3))

dat = makeForecastData(.predCalibration=preds,.outcomeCalibration=outcome)
this.ensemble <- calibrateEnsemble(dat, model="logit", tol=0.000000000000000001, maxIter=25000, exp=3, useModelParams = TRUE)
summary(this.ensemble)

trueW = apply(weights, 2, mean) 

predCalibration = preds
outcomeCalibration = outcome
W = c(1/3,1/3,1/3)

x1 = GibbsLogit(outcomeCalibration,as.matrix(predCalibration),W,10000)

w2 = c(1,0,0)
x2 = GibbsLogit(outcomeCalibration,as.matrix(predCalibration),w2,10000)

apply(x2[["W_post"]],2,mean)
apply(x1[["W_post"]],2,mean)





.makeAdj <- function(x){
  .adjPred <- qlogis(x)
  .negative <- .adjPred<0
  .pos <- .adjPred>1
  .adjPred <- ((1+abs(.adjPred))^(1/exp))-1
  .miss <- is.na(.adjPred)
  .negative[.miss] <- FALSE
  .adjPred[.negative] <- .adjPred[.negative]*(-1)
  #.adjPred[.pos] <- NA
  .adjPred[.miss] <- NA
  .adjPred
}
.modelFitter <- function(preds){
  .adjPred <- .makeAdj(preds)
  .thisModel <- glm(outcomeCalibration~.adjPred, family=binomial(link = "logit"))
  if (!.thisModel$converged){stop("One or more of the component logistic regressions failed to converge.  This may indicate perfect separtion or some other problem.  Try the useModelParams=FALSE option.")}
  return(.thisModel)
}

.predictCal <- function(x){
  .rawPred <- predict(x, type="response")
  .outPred <- rep(NA, nObsCal)
  .outPred[as.numeric(names(.rawPred))] <- .rawPred
  return(.outPred)
}

nObsCal = dim(preds)[1]
nMod = dim(preds)[2]
nDraws = 1
exp =3
.models <- apply(preds, 2, FUN=.modelFitter)


predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(dim(preds)[2], dim(preds)[1], 1)), c(2,1,3))
  dim(predCalibrationAdj)
  array(laply(.models, coefficients), dim=c(nMod, 2, nDraws))
  modelParams <- aperm(array(laply(.models, coefficients), dim=c(nMod, 2, nDraws)), c(2,1,3))




x2 = GibbsLogit(outcomeCalibration,as.matrix(predCalibrationAdj[,,1]),W,10000)



data(calibrationSample)
data(testSample)

preds = calibrationSample[,c("LMER", "SAE", "GLM")]
outcomeCalibration = calibrationSample[,"Insurgency"]

nObsCal = dim(preds)[1]
nMod = dim(preds)[2]
nDraws = 1
exp =3
.models <- apply(preds, 2, FUN=.modelFitter)

predCalibrationAdj <- aperm(array(laply(.models, .predictCal), dim=c(dim(preds)[2], dim(preds)[1], 1)), c(2,1,3))

x1= GibbsLogit(outcomeCalibration,as.matrix(predCalibrationAdj[,,1]),W,20000)
apply(x1[["W_post"]][10000:20000,],2,mean)
x1a= GibbsLogit(outcomeCalibration,preds,W,20000)
apply(x1a[["W_post"]][10000:20000,],2,mean)

dat = makeForecastData(.predCalibration=preds,.outcomeCalibration=outcomeCalibration)
this.ensemble <- calibrateEnsemble(dat, model="logit", tol=0.000000000000000001, maxIter=25000, exp=3, useModelParams = TRUE)
summary(this.ensemble)
this.ensemble2 <- calibrateEnsemble(dat, model="logit", tol=0.000000000000000001, maxIter=25000, exp=3, useModelParams = FALSE)
summary(this.ensemble2)



preds = predCalibrationAdj[,,1]



iterations = 10000
<<<<<<< Updated upstream
w_post = matrix(NA, nrow = iterations, ncol = dim(preds)[2])
W = c(1/3,1/3,1/3)
=======
w_post = matrix(NA, nrow = iterations, ncol = dim(predCalibration)[2])
W = c(0,0,1)

>>>>>>> Stashed changes
for(iter in 1:iterations){
  theta = matrix(NA, nrow = dim(predCalibration)[1], ncol = dim(predCalibration)[2])
  for(i in 1: dim(predCalibration)[1]){
    if(outcomeCalibration[i] == 1){theta[i,] = as.numeric(W*predCalibration[i,])/sum(W*predCalibration[i,])}
    if(outcomeCalibration[i] == 0){theta[i,] = as.numeric(W*(1 -predCalibration[i,])/sum(W*(1- predCalibration[i,])))}
  }
  
  t = matrix(NA, nrow = dim(predCalibration)[1], ncol = dim(predCalibration)[2])
  for(i in 1: dim(predCalibration)[1]){
    t[i,] = rmultinom(1, 1, theta[i,])
  }
  nu = rep(NA,dim(predCalibration)[2])
  for(m in 1: dim(t)[2]){
    nu[m] = 1 + sum(t[,m])
  }  
  W = rdirichlet(1, nu)
  w_post[iter,] = W
}
  
apply(w_post[6000:10000,],2, mean)  
apply(x2[[2]][6000:10000,],2, mean)  


x2[["theta_post"]][[1]][696,]
theta[696,]
x2[["W_post"]]

theta = 
length(x2[[2]])

x2[[2]][[500]] == x2[[2]][[10000]]
apply(x2[[1]][8000:10000,],2,mean)


y = x2[[1]]/x2[[2]]


Rcpp::Named("PosteriorWeights") = W_post
