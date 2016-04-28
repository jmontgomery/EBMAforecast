library(stats)

# create test data
n <- 20
test.forecasts <- data.frame(matrix(rep(t(presidentialForecast[,c(1:6)]),n),
                        ncol=ncol(presidentialForecast[,c(1:6)]), byrow=TRUE))
# draw observations from different models

testObserved1 <- rnorm((n*15)/2, test.forecasts[,1], 1)
testObserved2 <- rnorm((n*15)/2, test.forecasts[,2], 1)
testObserved <- c(testObserved1, testObserved2)

test.ForecastData<-makeForecastData(.predCalibration=test.forecasts[c(1:(n*15)-1),],
                                    .outcomeCalibration=testObserved[c(1:(n*15)-1)],
                                    .predTest=test.forecasts[(n*15),],
                                    .outcomeTest=testObserved[(n*15)],
                                    .modelNames=c("Campbell", "Lewis-Beck","EWT2C2","Fair","Hibbs","Abramowitz"))
thisEnsemble<-calibrateEnsemble(test.ForecastData, model="normal", useModelParams=FALSE, tol=0.000000001)

thisEnsemble@modelWeights
testthat