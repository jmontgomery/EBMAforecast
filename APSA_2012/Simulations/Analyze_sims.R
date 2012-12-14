rm(list=ls(all=TRUE))

#setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")

load("SecondRound")
objects()

summary(output)


##### here is the function that plots seven points with a lowes line for each statistic
plot.fn<-function(models, train, func){


 alpha<-c(10,5,3)
  if (models>3){alpha<-c(alpha, rep(1, models-3))}
 a.mean <- alpha/mean(alpha)
  
c<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
slots<-rep(NA,13)
count<-0
for(i in 1:1911){
	if(output[[i]]$theseParams[1]==train & output[[i]]$theseParams[2]==models){
	count<-count+1
	slots[count]<-i} 
	}
error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=13,ncol=100)

for(i in slots){
	count<-which(slots==i)
        errror.all.mat<-abs(output[[i]]$error)%*%a.mean
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



par(mfrow=c(3,3))
plot(c,error.all,pch=15,main="Weighted Weight Error (all)")
lines(loess(error.all~c))
plot(c,error,pch=15,main="Weight Error (largest weight model)")
abline(h=0)
lines(loess(error~c))
plot(c,crps,pch=15,main="CRPS")
lines(loess(crps~c))
plot(c,mae,pch=15,main="MAE")
lines(loess(mae~c))
plot(c,rmse,pch=15,main="RMSE")
lines(loess(rmse~c))
plot(c,mape,pch=15,main="MAPE")
lines(loess(mape~c))
plot(c,meape,pch=15,main="MEAPE")
lines(loess(meape~c))
plot(c,mrae,pch=15,main="MRAE")
lines(loess(mrae~c))
plot(c,pw,pch=15,main="PW")
lines(loess(pw~c))



}



nTrain<-c(3:15,20,25,35,45,55,65,85,100)
nmod<-seq(3,15, by=2)
constant<-c(0,.01, 0.02,.025, 0.03, 0.04, .05, 0.075, 0.1, 0.15, 0.2, 0.3, .5)
iter<-100
outSample<-250

#to plot, specify the number of models and number of training observation in the sim data that one wants to plot and where the mean (command "mea") or median (command "med") of the 1000 iteration for each statistic, abs error all models is the difference in weights to true weights for all models, abs error largest weight model is only the difference in weight to true weight for the largest model
j <- plot.fn(models=11,train=5,func="med")

#this creates a three dataframes with one row per parameter combination, the columns are number of training set obs, number of models, mean statistic (over iterations), median statistic (over iterations), variance of statistic (over iterations) and value of the constant

# the three dataframes are pred.mae for MAE of the EBMA model out of sample, error for the absolute error in weight to the highest weight model and pred.rmse for RMSE of the EBMA model out of sample

counter<-0
error<-pred.mae<-pred.rmse<-matrix(NA,nrow=833,ncol=6)
colnames(error)<-colnames(pred.rmse)<-colnames(pred.mae)<-c("nTrain","nmod","const","mean","median","var")
for(i in 1:833){	
error[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(abs(output[[i]]$error[,1])),median(abs(output[[i]]$error[,1])),var(abs(output[[i]]$error[,1])))
pred.mae[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(output[[i]]$pred.mae[,"EBMA"]),median(output[[i]]$pred.mae[,"EBMA"]),var(output[[i]]$pred.mae[,"EBMA"]))	
pred.rmse[i,]<-c(output[[i]]$theseParams[1],output[[i]]$theseParams[2],output[[i]]$theseParams[5],mean(output[[i]]$pred.rmse[,"EBMA"]),median(output[[i]]$pred.rmse[,"EBMA"]),var(output[[i]]$pred.rmse[,"EBMA"]))
}	
error<-as.data.frame(error)
names(error)<-c("nTrain","nmod","const","mean","median","var")

pred.rmse<-as.data.frame(pred.rmse)
names(pred.rmse)<-c("nTrain","nmod","const","mean","median","var")

pred.mae<-as.data.frame(pred.mae)
names(pred.mae)<-c("nTrain","nmod","const","mean","median","var")





library(RColorBrewer)
help(RColorBrewer)

colors<-brewer.pal(7,"Set1")



#subsetting data to 4 obs in training set and different numbers of models
nmod3<-subset(error, nmod==3 & nTrain==4)
nmod5<-subset(error, nmod==5 & nTrain==4)
nmod7<-subset(error, nmod==7 & nTrain==4)
nmod9<-subset(error, nmod==9 & nTrain==4)
nmod11<-subset(error, nmod==11 & nTrain==4)
nmod13<-subset(error, nmod==13& nTrain==4)
nmod15<-subset(error, nmod==15 & nTrain==4)




# a plot for 4 obs in training set varying over c and the number of models
plot(nmod3$const,nmod3$median,pch=15,col=colors[1],ylim=c(0,0.6), main="Mean Absolute Error for highest Weight Model",xlab="Constant",ylab="Mean Error")
lines(lowess(nmod3$const,nmod3$median),col=colors[1])
points(nmod5$const,nmod5$median,pch=15,col=colors[2])
lines(lowess(nmod5$const,nmod5$median),col=colors[2])
points(nmod7$const,nmod7$median,pch=15,col=colors[3])
lines(lowess(nmod7$const,nmod7$median),col=colors[3])
points(nmod9$const,nmod9$median,pch=15,col=colors[4])
lines(lowess(nmod9$const,nmod9$median),col=colors[4])
points(nmod11$const,nmod11$median,pch=15,col=colors[5])
lines(lowess(nmod11$const,nmod11$median),col=colors[5])
points(nmod13$const,nmod13$median,pch=15,col=colors[6])
lines(lowess(nmod13$const,nmod13$median),col=colors[6])
points(nmod15$const,nmod15$median,pch=15,col=colors[7])
lines(lowess(nmod15$const,nmod15$median),col=colors[7])
legend("topleft",legend=c(3,5,7,9,11,13,15),fill=colors,title="Number of Models")



