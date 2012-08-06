
#' @export
setClass(Class="FDatFitNormal",
         contains="ForecastData",
         representation=representation(
           modelWeights="numeric",
           modelParams="array",
           variance="numeric",
           logLik="numeric",
           exp="numeric",
           tol="numeric",
           maxIter="numeric",
           method="character",
           predType="character",
           call="call"
           )
         )


#' @export
setMethod(
          f="plot",
          signature="FDatFitNormal",
          definition=function(x, y=NULL, period="calibration",  subset=1,
            mainLabel=paste("Observation", subset), xLab="Outcome", yLab="Posterior Probability", cols=2:(length(x@modelNames)+1), ... )
          {

            thisDraw=1

            if(period=="calibration"){
              .nMod <- length(x@modelNames)
              .pred <- matrix(x@predCalibration[subset,,thisDraw], ncol=.nMod+1);  colnames(.pred) <- c("EBMA", x@modelNames)
              .actual <- x@outcomeCalibration[subset]
            } else{
              .pred <- matrix(x@predTest[subset,,thisDraw], ncol=.nMod+1); colnames(.pred) <- c("EBMA", x@modelNames)
              .actual <- x@outcomeTest
            }
            
            .sd <- sqrt(x@variance)
            
            if (length(subset)>1){
              for (j in 1:nrow(.pred)){
                .means <- .pred[j,x@modelNames]
                .miss <- is.na(.means)
                .nModThis <- sum(!.miss)
                .means <- .means[!.miss]
                
                .xMin <- min(.means)-2.5*.sd;  .xMax <- max(.means)+2.5*.sd
                .xAxis <- seq(.xMin, .xMax, by=.01);  .yAxis <- matrix(NA, .nModThis, length(.xAxis)) 
                W <- x@modelWeights[!.miss]
                for(i in 1:.nModThis){ .yAxis[i,] <- dnorm(.xAxis, mean=.means[i], sd=.sd)*W[i] }
                .totals <- colSums(.yAxis)
                plot(NULL, xlim=c(.xMin, .xMax), ylim=c(0,max(.totals)), main=mainLabel[j], xlab=xLab, ylab=yLab)
                for(i in 1:.nModThis){lines(.xAxis, .yAxis[i,], type="l", lty=2,  col=cols[i])}
                lines(.xAxis, colSums(.yAxis), lwd=2)
                rug(.means);  rug(.pred[j,"EBMA"], lwd=3)
                abline(v=.actual[j], lty=3)
              }
            } else {
              .means <- .pred[,x@modelNames]
              .miss <- is.na(.means)
              .nModThis <- sum(!.miss)
              .means <- .means[!.miss]
              .xMin <- min(.means)-2.5*.sd
              .xMax <- max(.means)+2.5*.sd
              .xAxis <- seq(.xMin, .xMax, by=.01)
              .yAxis <- matrix(NA, .nModThis, length(.xAxis)) 
              W <- x@modelWeights[!.miss]
              for(i in 1:.nModThis){.yAxis[i,] <- dnorm(.xAxis, mean=.means[i], sd=.sd)*W[i]}
              .totals <- colSums(.yAxis)
              plot(NULL, xlim=c(.xMin, .xMax), ylim=c(0,max(.totals)), main=mainLabel, xlab=xLab, ylab=yLab)
              for(i in 1:.nModThis){lines(.xAxis, .yAxis[i,], type="l", lty=2, col=cols[i])}
              lines(.xAxis, colSums(.yAxis))
              rug(.means); rug(.pred[,"EBMA"], lwd=3)
              abline(v=.actual, lty=3)
            }
          }
          )
