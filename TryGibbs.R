library(EBMAforecast)


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

preds = data.frame(m1,m2,m3)

dat = makeForecastData(.predCalibration=preds,.outcomeCalibration=outcome)
this.ensemble <- calibrateEnsemble(dat, model="logit", tol=0.000000000000000001, maxIter=25000, exp=1, useModelParams = TRUE)
summary(this.ensemble)

trueW = apply(weights, 2, mean) 

predCalibration = preds
outcomeCalibration = outcome
W = c(1/3,1/3,1/3)

x2 = GibbsLogit(outcomeCalibration,as.matrix(predCalibration),W,10000)


iterations = 10000
w_post = matrix(NA, nrow = iterations, ncol = dim(preds)[2])
W = c(1/3,1/3,1/3)
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
  
  
  
  x2[["theta_post"]][[1]][696,]
theta[696,]
x2[["W_post"]]

theta = 
length(x2[[2]])

x2[[2]][[500]] == x2[[2]][[10000]]
apply(x2[[1]][8000:10000,],2,mean)


y = x2[[1]]/x2[[2]]


Rcpp::Named("PosteriorWeights") = W_post
