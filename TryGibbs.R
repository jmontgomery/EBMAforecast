this.ForecastData <- makeForecastData(.predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")],
                                      +                                       .outcomeCalibration=calibrationSample[,"Insurgency"],
                                      +                                       .predTest=testSample[,c("LMER", "SAE", "GLM")],
                                      +                                       .outcomeTest=testSample[,"Insurgency"],
                                      +                                       .modelNames=c("LMER", "SAE", "GLM"))


predCalibration=calibrationSample[,c("LMER", "SAE", "GLM")]
outcomeCalibration=calibrationSample[,"Insurgency"]
W = c(1/3,1/3,1/3)

GibbsLogit(outcomeCalibration,predCalibration,W,200)

Rcpp::Named("PosteriorWeights") = W_post