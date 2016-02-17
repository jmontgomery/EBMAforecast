library(EBMAforecast)

data(calibrationSample)

predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")]
outcomeCalibration=calibrationSample[,"Insurgency"]
W = c(1/3,1/3,1/3)

x2 = GibbsLogit(outcomeCalibration,predCalibration,W,10000)

y = x2[[1]]/x2[[2]]


Rcpp::Named("PosteriorWeights") = W_post
