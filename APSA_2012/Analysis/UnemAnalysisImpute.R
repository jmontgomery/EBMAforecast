myTestFunctionImput <- function(.windowSize=30, .minCal=15, .predYearQuarter="1980.1", .const=0, data=ud1){

  
  .predThis <- which(data$forecast.year.quarter==.predYearQuarter)
  .theseRows <- (.predThis-.windowSize-1):(.predThis-1)
  
  .all <- length(.theseRows)
  .selector <- colSums(is.na(data[.theseRows,]))<(.all-.minCal) & !is.na(data[.predThis,])
  .reduced <- data[.theseRows, .selector]

   # this code takes out any row where we now have no forecasts
  .rowSelector <- !(rowMeans(is.na(.reduced[,-(1:3)]))==1)
  .reduced <- .reduced[.rowSelector,]

#  print(.reduced)
  .reduced[,-c(1:3)] <- t(apply(.reduced[,-c(1:3)],1, function(x) {
  x[is.na(x)] <- mean(x, na.rm=TRUE)
  x
}))
#print(.reduced)

  
  .target <- data[.predThis, .selector]

  .FD <- makeForecastData(.predCalibration=.reduced[,-c(1:3)]
                          ,.outcomeCalibration=.reduced[,2]
                          ,.predTest=.target[,-c(1:3)]
                          ,.outcomeTest=.target[,2]
                          ,.modelNames=colnames(.reduced[,-c(1:3)])
                          )

  ensemble <- calibrateEnsemble(.forecastData=.FD, model="normal", useModelParams=FALSE, const=.const)
  output <- matrix(c(rownames(data[.predThis,]), ensemble@predTest[1], as.numeric(ensemble@modelWeights)), nrow=1)
  output <- data.frame(output)
  colnames(output) <- c("row", "EBMA", ensemble@modelNames)
  output
}

jacob <- myTestFunctionImput(.predYearQuarter="1991.1",.windowSize=20, .minCal=10, .const=0)


registerDoMC(cores=32)
thisSweepImp1 <- thisSweep<- ldply(as.character(ud1[41:161,1]), myTestFunctionImput, .windowSize=20, .minCal=10, .const=0, .parallel=TRUE)
thisSweepImp2 <- ldply(as.character(ud1[41:161,1]), myTestFunctionImput, .windowSize=10, .minCal=5, .const=.05, .parallel=TRUE)
