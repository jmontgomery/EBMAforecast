setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

load("~/Dropbox/EBMA/ResultsOfSims")
objects()

summary(output)
(output[1])

output[[1]]$theseParams[1]
counter<-0
error<-pred.mae<-pred.rmse<-array(NA,dim=c(17,5,7))

for(k in 0:6){
for(i in 1:17){	
error[i,,k+1]<-c(output[[(k*17)+i]]$theseParams[1],mean(output[[(k*17)+i]]$error[,1]),quantile(output[[(k*17)+i]]$error[,1],c(0.025,0.975)),output[[(k*17)+i]]$theseParams[2])	
pred.mae[i,,k+1]<-c(output[[(k*17)+i]]$theseParams[1],mean(output[[(k*17)+i]]$pred.mae[,1]),quantile(output[[(k*17)+i]]$pred.mae[,1],c(0.025,0.975)),output[[(k*17)+i]]$theseParams[2])	
pred.rmse[i,,k+1]<-c(output[[(k*17)+i]]$theseParams[1],mean(output[[(k*17)+i]]$pred.rmse[,1]),quantile(output[[(k*17)+i]]$pred.rmse[,1],c(0.025,0.975)),output[[(k*17)+i]]$theseParams[2])
}	
}
library(RColorBrewer)
help(RColorBrewer)

colors<-brewer.pal(7,"Set1")


#this is a stupid plot, for just for shits and giggles
plot(error[,2,1],error[,1,1],xlab="Error",ylab="Size of Calibration Period",col=colors[1],pch=15)
points(error[,2,2],error[,1,2],col=colors[2],pch=15)
points(error[,2,3],error[,1,3],col=colors[3],pch=15)
points(error[,2,4],error[,1,4],col=colors[4],pch=15)
points(error[,2,5],error[,1,5],col=colors[5],pch=15)
points(error[,2,6],error[,1,6],col=colors[6],pch=15)
points(error[,2,7],error[,1,7],col=colors[7],pch=15)
legend("topleft",legend=c(3,5,7,9,11,13,15),fill=colors,title="Number of Models")
