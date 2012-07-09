
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
          definition=function(x, y=NULL, period="calibration", ...){
            numModels <- length(x@modelWeights)
            if(period=="calibration"){
              .pred <- x@predCalibration[1:min(4,nrow(x@predCalibration)),,1];
                                         .actual <- x@outcomeCalibration[1:4]
            }
            else{
              .pred <- matrix(x@predTest[1:min(4,nrow(x@predTest)),,1], ncol=numModels+1); .actual <- x@outcomeTest
              colnames(.pred) <- modelNames
            }

            
            sd <- sqrt(x@variance)

par(mfrow=c(nrow(.pred),1))
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
              plot(NULL, xlim=c(xMin, xMax), ylim=c(0,max(totals)), main=j, xlab="Prob", ylab="Vote Share")
              for(i in 1:numModels){
              lines(xAxis, yAxis[i,], type="l", lty=2, col=i+1)
            }
              lines(xAxis, colSums(yAxis))
          }
            
            

          }
          )
