
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
           call="call"
           )
         #,
#         prototype=prototype(
#           modelWeights=numeric(),
#           modelParams=matrix(NA, nrow=0, ncol=0),
#           variance=numeric(),
#           logLik=numeric(),
#           exp=numeric(),
#           tol=numeric(),
#           maxIter=numeric(),
#           method=character(),
#           call=call(" ")
#           ),
#         validity=function(object){
#           if(length(object@modelWeights)>0){
#             if(sum(object@modelWeights)<=.99 || sum(object@modelWeights)>1.01){
#             stop("Model weights should sum to approximately one.")
#           }
#           }
 #        }
         )


#' @export
setMethod(
          f="plot",
          signature="FDatFitNormal",
          definition=function(x, y=NULL, period="calibration",  subset=1,
            mainLabel=paste("Observation", subset), xLab="Outcome", yLab="Posterior Probability", cols=2:(length(x@modelNames)+1), ... ){
            thisDraw=1
            numModels <- length(x@modelWeights)
            if(period=="calibration"){
              .pred <- matrix(x@predCalibration[subset,,thisDraw], ncol=numModels+1);
              colnames(.pred) <- c("EBMA", x@modelNames)
                                         .actual <- x@outcomeCalibration[subset]
            }
            else{
              .pred <- matrix(x@predTest[subset,,thisDraw], ncol=numModels+1); .actual <- x@outcomeTest
              colnames(.pred) <- c("EBMA", x@modelNames)
            }

            
            sd <- sqrt(x@variance)
            if (length(subset)>1){
            for (j in 1:nrow(.pred)){
              means <- .pred[j,x@modelNames]
              xMin <- min(means)-2.5*sd
              xMax <- max(means)+2.5*sd
              xAxis <- seq(xMin, xMax, by=.01)
               yAxis <- matrix(NA, numModels, length(xAxis)) 
              W <- x@modelWeights
              for(i in 1:numModels){
                yAxis[i,] <- dnorm(xAxis, mean=means[i], sd=sd)*W[i]
              }
              totals <- colSums(yAxis)
              plot(NULL, xlim=c(xMin, xMax), ylim=c(0,max(totals)), main=mainLabel[j], xlab=xLab, ylab=yLab)
              for(i in 1:numModels){
              lines(xAxis, yAxis[i,], type="l", lty=2,  col=cols[i])
            }
              lines(xAxis, colSums(yAxis), lwd=2)
              rug(means)
             abline(v=.actual[j], lty=3)
             rug(.pred[j,"EBMA"], lwd=3)
              
          }
           } else {

             means <- .pred[,x@modelNames]
              xMin <- min(means)-2.5*sd
              xMax <- max(means)+2.5*sd
              xAxis <- seq(xMin, xMax, by=.01)

             yAxis <- matrix(NA, numModels, length(xAxis)) 
              W <- x@modelWeights
              for(i in 1:numModels){
                yAxis[i,] <- dnorm(xAxis, mean=means[i], sd=sd)*W[i]
              }

              totals <- colSums(yAxis)
              plot(NULL, xlim=c(xMin, xMax), ylim=c(0,max(totals)), main=mainLabel, xlab=xLab, ylab=yLab)
              for(i in 1:numModels){
              lines(xAxis, yAxis[i,], type="l", lty=2, col=cols[i])
            }
              lines(xAxis, colSums(yAxis))
              rug(means)
             abline(v=.actual, lty=3)

             rug(.pred[,"EBMA"], lwd=3)
          }

            
           
            

          }
          )
