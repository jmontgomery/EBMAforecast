library(EBMAforecast)

data(calibrationSample)

predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")]
outcomeCalibration=calibrationSample[,"Insurgency"]
W = c(1/3,1/3,1/3)

x2 = GibbsLogit(outcomeCalibration,predCalibration,W,500)

iterations = 10000
w_post = matrix(NA, nrow = iterations, ncol = dim(predCalibration)[2])
W = c(1/3,1/3,1/3)
for(iter in 1:iterations){
  theta = matrix(NA, nrow = dim(predCalibration)[1], ncol = dim(predCalibration)[2])
  for(i in 1: dim(predCalibration)[1]){
    if(outcomeCalibration[i] == 1){theta[i,] = W*predCalibration[i,]/sum(W*predCalibration[i,])}
    if(outcomeCalibration[i] == 0){theta[i,] = W*(1 -predCalibration[i,])/sum(W*(1- predCalibration[i,]))}
  }
  
  t = matrix(NA, nrow = dim(predCalibration)[1], ncol = dim(predCalibration)[2])
  for(i in 1: dim(predCalibration)[1]){
    t[i,] = rmultinom(1, 1, theta[i,])
  }
  nu = rep(NA,dim(predCalibration)[2])
  for(m in 1: dim(t)[2]){
    nu[m] = 1 + sum(t[,m])
  }  
  W = MCMCpack::rdirichlet(1, nu)
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
