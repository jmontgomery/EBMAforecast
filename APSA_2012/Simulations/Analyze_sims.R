rm(list=ls(all=TRUE))

setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

load("~/Dropbox/EBMA/ResultsOfSims")
objects()

summary(output)



plot.fn<-function(models, train, func){

c<-c(0,0.01,0.025,0.05,0.1,0.2,0.5)
slots<-rep(NA,7)
count<-0
for(i in 1:833){
	if(output[[i]]$theseParams[1]==train & output[[i]]$theseParams[2]==models){
	count<-count+1
	slots[count]<-i} 
	}
error.mat<-mae.mat<-rmse.mat<-matrix(NA,nrow=7,ncol=1000)

for(i in slots){
	count<-which(slots==i)
	error.all.mat<-rowSums(abs(output[[i]]$error))
	error.mat[count,]<-output[[i]]$error[,1]
	rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
	mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
}

if(func=="med"){
	error.all<-apply(abs(error.mat),1,FUN=median)
	error<-abs(apply(error.mat,1,FUN=median))
	rmse<-abs(apply(rmse.mat,1,FUN=median))
	mae<-abs(apply(mae.mat,1,FUN=median))
}

if(func=="mea"){
	error.all<-apply(abs(error.mat),1,FUN=mean)
	error<-apply(abs(error.mat),1,FUN=mean)
	rmse<-apply(rmse.mat,1,FUN=mean)
	mae<-apply(mae.mat,1,FUN=mean)
}
par(mfrow=c(2,2))
plot(c,error.all,pch=15,main="Abs Error (all models)")
lines(lowess(c,error.all))
plot(c,error,pch=15,main="Abs Error (largest weight model)")
lines(lowess(c,error))
plot(c,mae,pch=15,main="MAE")
lines(lowess(c,mae))
plot(c,rmse,pch=15,main="RMSE")
lines(lowess(c,rmse))
}


plot.fn(models=7,train=7,func="med")


































colnames(output[[1]]$pred.rmse)
counter<-0
error<-pred.mae<-pred.rmse<-matrix(NA,nrow=833,ncol=5)
colnames(error)<-colnames(pred.rmse)<-colnames(pred.mae)<-c("nTrain","nmod","mean","median","var","const")
for(i in 1:833){	
error[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(abs(output[[i]]$error[,1])),median(abs(output[[i]]$error[,1])),var(output[[i]]$error[,1]))	
pred.mae[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(output[[i]]$pred.mae[,"EBMA"]),median(output[[i]]$pred.mae[,"EBMA"]),var(output[[i]]$pred.mae[,"EBMA"]))	
pred.rmse[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(output[[i]]$pred.rmse[,"EBMA"]),median(output[[i]]$pred.rmse[,"EBMA"]),var(output[[i]]$pred.rmse[,"EBMA"]))
}	
error<-as.data.frame(error)
names(error)<-c("nTrain","nmod","const","mean","var")

pred.rmse<-as.data.frame(pred.rmse)
names(pred.rmse)<-c("nTrain","nmod","const","mean","var")

pred.mae<-as.data.frame(pred.mae)
names(pred.mae)<-c("nTrain","nmod","const","mean","var")



plot.fn<-function(models, train, func){
	if(func==mean){
		
		 }
	
	
	
}


#####nmod=4, ntrain=5

error45<-subset(error, nmod==5 & nTrain==10)
plot(error45$const,error45$mean,)





















### some plots based on regression, this is complete crap

error$const2<-(error$const)^2
giggles<-lm(mean~ nTrain + nmod + const+ const2 , data=(error))
summary(giggles)


train<-4
mod<-5
c<-seq(0.00,0.5,0.01)
c2<-c^2
betas<-as.matrix(giggles$coef)
cov<-as.matrix(vcov(giggles))

yhat<-matrix(NA,length(c),length(giggles$coef))
med1<-cbind(1,4,5,c,c2)
reps <- 10000
yhat <- matrix(NA, length(c), reps)

for (i in 1:reps){
	xbeta <- med1 %*% mvrnorm(1, betas, cov)
	yhat[,i] <- xbeta
	}
predvalues <- apply(yhat, 1, quantile, probs = c(0.025,0.5,0.975),na.rm=TRUE)
plotlines1<- cbind(c, t(predvalues1))
plot(plotlines1[,1],plotlines1[,4],type="l",ylim=c(1,1.5),xlim=c(0,.5),lty=2,lwd=2,col="red",axes=FALSE,xlab="constant",ylab="Predicted Mean Absolute Error for highest Weight model",main="")
axis(2,las= HORIZONTAL<-1)
axis(1)
lines(plotlines1[,1],plotlines1[,3], lwd=2, col="red")
lines(plotlines1[,1],plotlines1[,2], lwd=2, lty=2,col="red")



pred.rmse<-as.data.frame(pred.rmse)
names(pred.rmse)<-c("nTrain","nmod","mean","var","const")
pred.rmse$const2<-(pred.rmse$const)^2
giggles_rmse<-lm(mean~ nTrain + nmod + const+ const2 , data=(pred.rmse))
summary(giggles_rmse)


train<-4
mod<-5
c<-seq(0.00,0.5,0.01)
c2<-c^2
betas1<-as.matrix(giggles_rmse$coef)
cov1<-as.matrix(vcov(giggles_rmse))

yhat1<-matrix(NA,length(c),length(giggles_rmse$coef))
med1<-cbind(1,4,5,c,c2)
reps <- 10000
yhat1<- matrix(NA, length(c), reps)

for (i in 1:reps){
	xbeta <- med1 %*% mvrnorm(1, betas1, cov1)
	yhat1[,i] <- xbeta
	}
predvalues1 <- apply(yhat1, 1, quantile, probs = c(0.025,0.5,0.975),na.rm=TRUE)
plotlines1<- cbind(c, t(predvalues1))
plot(plotlines1[,1],plotlines1[,4],type="l",ylim=c(1,1.5),xlim=c(0,1),lty=2,lwd=2,col="red",axes=FALSE,xlab="constant",ylab="Predicted Mean RMSE for EBMA model",main="")
axis(2,las= HORIZONTAL<-1)
axis(1)
lines(plotlines1[,1],plotlines1[,3], lwd=2, col="red")
lines(plotlines1[,1],plotlines1[,2], lwd=2, lty=2,col="red")




pred.mae$const2<-(pred.rmse$const)^2
pred.mae$const3<-(pred.rmse$const)^3

giggles_mae<-lm(mean~ nTrain + nmod + const+ const2 , data=(pred.mae))
summary(giggles_mae)


train<-4
mod<-5
c<-seq(0.00,0.5,0.01)
c2<-c^2
c3<-c^3
betas2<-as.matrix(giggles_mae$coef)
cov2<-as.matrix(vcov(giggles_mae))

yhat2<-matrix(NA,length(c),length(giggles_mae$coef))
med1<-cbind(1,4,5,c,c2)
reps <- 10000
yhat2<- matrix(NA, length(c), reps)

for (i in 1:reps){
	xbeta <- med1 %*% mvrnorm(1, betas2, cov2)
	yhat2[,i] <- xbeta
	}
predvalues2 <- apply(yhat2, 1, quantile, probs = c(0.025,0.5,0.975),na.rm=TRUE)
plotlines2<- cbind(c, t(predvalues2))
plot(plotlines2[,1],plotlines2[,4],type="l",ylim=c(0,1),xlim=c(0,1),lty=2,lwd=2,col="red",axes=FALSE,xlab="constant",ylab="Predicted Mean MAE for EBMA model",main="")
axis(2,las= HORIZONTAL<-1)
axis(1)
lines(plotlines2[,1],plotlines2[,3], lwd=2, col="red")
lines(plotlines2[,1],plotlines2[,2], lwd=2, lty=2,col="red")








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
