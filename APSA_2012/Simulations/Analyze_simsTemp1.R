rm(list=ls(all=TRUE))

#setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")

load("SecondRound")
#objects()

#summary(output)


##### here is the function that plots seven points with a lowes line for each statistic
plot.fn<-function(pos1=1, value1=5, pos2=2,value2=5,pos3=5,func="med", my.col="gray90", my.line=FALSE, my.adj=0, my.col2="black"){


#pos1=5; value1=0; pos2=2; value2=5; pos3=2

# alpha<-c(10,5,3)
#  if (models>3){alpha<-c(alpha, rep(1, models-3))}
# a.mean <- alpha/sum(alpha) # ?
  

slots<-NA
count<-0
for(i in 1:1911){
	if(output[[i]]$theseParams[pos1]==value1 & output[[i]]$theseParams[pos2]==value2){
	count<-count+1
	slots[count]<-i} 
	}
error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)

x.axis <- rep(NA, length(slots))
count <- 1
for(i in slots){
  print(i)
  x.axis[count] <- output[[i]]$theseParams[pos3]
  count <- count+1
}

for(i in slots){
	count<-which(slots==i)
        errror.all.mat<-abs(output[[i]]$error)#%*%a.mean
	#error.all.mat<-rowSums(abs(output[[i]]$error))
	error.mat[count,]<-output[[i]]$error[,1]
	rmse.mat[count,]<-output[[i]]$pred.rmse[,"EBMA"]
	mae.mat[count,]<-output[[i]]$pred.mae[,"EBMA"]
        mad.mat[count,]<-output[[i]]$pred.mad[,"EBMA"]
        rmsle.mat[count,] <- output[[i]]$pred.rmsle[,"EBMA"]
        mape.mat[count,] <- output[[i]]$pred.mape[,"EBMA"]
        meape.mat[count,] <- output[[i]]$pred.meape[,"EBMA"]
        mrae.mat[count,] <- output[[i]]$pred.mrae[,"EBMA"]
        pw.mat[count,] <- output[[i]]$pred.pw[,"EBMA"]
        crps.mat[count,] <- output[[i]]$model.crps
}

if(func=="med"){
	error.all<-apply(abs(error.mat),1,FUN=median,na.rm=TRUE)
	error<-(apply(error.mat,1,FUN=median, na.rm=TRUE))
	rmse<-abs(apply(rmse.mat,1,FUN=median, na.rm=TRUE))
	mae<-abs(apply(mae.mat,1,FUN=median, na.rm=TRUE))
      	mad<-abs(apply(mad.mat,1,FUN=median, na.rm=TRUE))
        rmsle<-abs(apply(rmsle.mat,1,FUN=median, na.rm=TRUE))
        mape<-abs(apply(mape.mat,1,FUN=median, na.rm=TRUE))
        meape<-abs(apply(meape.mat,1,FUN=median, na.rm=TRUE))
        mrae<-abs(apply(mrae.mat,1,FUN=median, na.rm=TRUE))
        pw<-abs(apply(pw.mat,1,FUN=median, na.rm=TRUE))
        crps<-abs(apply(crps.mat,1,FUN=median, na.rm=TRUE))
      }

if(func=="mea"){
	error.all<-apply(abs(error.mat),1,FUN=mean,na.rm=TRUE)
	error<-(apply(error.mat,1,FUN=mean, na.rm=TRUE))
	rmse<-abs(apply(rmse.mat,1,FUN=mean, na.rm=TRUE))
	mae<-abs(apply(mae.mat,1,FUN=mean, na.rm=TRUE))
      	mad<-abs(apply(mad.mat,1,FUN=mean, na.rm=TRUE))
        rmsle<-abs(apply(rmsle.mat,1,FUN=mean, na.rm=TRUE))
        mape<-abs(apply(mape.mat,1,FUN=mean, na.rm=TRUE))
        meape<-abs(apply(meape.mat,1,FUN=mean, na.rm=TRUE))
        mrae<-abs(apply(mrae.mat,1,FUN=mean, na.rm=TRUE))
        pw<-abs(apply(pw.mat,1,FUN=mean, na.rm=TRUE))
        crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))
      }

x.axis <- x.axis+my.adj
x.axis.new <- matrix(x.axis, nrow=length(slots), ncol=100, byrow=FALSE)

if(!my.line){
plot(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main="CRPS by K and N_T", col=my.col, xlim=c(3, 20))
}
if(my.line){
points(x.axis.new, crps.mat, ylim=c(3, 12), ylab="CRPS", xlab="K", main=paste("N_=", value2), col=my.col)
}
lines(loess(c(crps)~c(x.axis-my.adj)), col=my.col2) 

#par(mfrow=c(3,3))
#plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
#lines(loess(error.all~c))
#plot(c,error,pch=15,main="Weight Error (largest weight model)")
#abline(h=0)

#plot(c,crps,pch=15,main="CRPS")
#lines(loess(crps~c))
#plot(c,mae,pch=15,main="MAE")
#lines(loess(mae~c))
#plot(c,rmse,pch=15,main="RMSE")
#lines(loess(rmse~c))
#plot(c,mape,pch=15,main="MAPE")
#lines(loess(mape~c))
#plot(c,meape,pch=15,main="MEAPE")
#lines(loess(meape~c))
#plot(c,mrae,pch=15,main="MRAE")
#lines(loess(mrae~c))
#plot(c,pw,pch=15,main="PW")
#lines(loess(pw~c))



}



par(mfrow=c(1,1), mar=c(3,2,2,1), mgp=c(1,0,0), tcl=.001)
plot.fn(pos1=5, value1=0, pos2=1, value2=5, pos3=2, func="med", my.col="gray90")
plot.fn(pos1=5, value1=0, pos2=1, value2=11, pos3=2, func="med", my.col="skyblue", my.line=TRUE, my.col2="blue", my.adj=.25)
plot.fn(pos1=5, value1=0, pos2=1, value2=100, pos3=2, func="med", my.col="pink", my.line=TRUE, my.col2="red", my.adj=.5)
legend(16, 10, c("N_T=5", "N_T=11","N_T=100"), col=c("black", "red", "blue"), lty=c(1,1,1), cex=.7) 
#plot.fn(pos1=5, value1=0, pos2=2, value2=9, pos3=1)
#plot.fn(pos1=5, value1=0, pos2=2, value2=15, pos3=1)


#nTrain<-c(3:15,20,25,35,45,55,65,85,100)
#nmod<-seq(3,15, by=2)
#constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
#iter<-100
#outSample<-250

