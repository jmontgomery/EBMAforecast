rm(list=ls(all=TRUE))
#library(RColorBrewer)
setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
setwd("~/Github/EBMAforecast/APSA_2012/Simulations")

load("SecondRound")
#objects()

#summary(output)


value1 <- 0
slots<-NA
count<-0
for(i in 1:1911){
	if(output[[i]]$theseParams[5]==value1){
	count<-count+1
	slots[count]<-i
      } 
	}
error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
count <- 1
y.axis <- x.axis <- rep(NA, length(slots))
for(i in slots){
            crps.mat[count,] <- output[[i]]$model.crps
            x.axis[count] <- output[[i]]$theseParams[2]/output[[i]]$theseParams[1] #k/n_T
            y.axis[count] <- output[[i]]$theseParams[5]
            count <- count+1
}
    crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))


pdf("2D.pdf")    
plot(x.axis, crps, ylim=c(5, 10.5), xlab=expression(frac("N Models",N[T])),ylab="CRPS",las=1,cex=0.5,pch=20,frame=F)
dev.off()




slots<-NA
count<-0
for(i in 1:1911){
	count<-count+1
	slots[count]<-i
	}
error.mat<-mae.mat<-rmse.mat<-mad.mat<-rmsle.mat <- mape.mat <- meape.mat <- mrae.mat <- pw.mat <- crps.mat <- matrix(NA,nrow=length(slots),ncol=100)
count <- 1
y.axis <- x.axis <- rep(NA, length(slots))
for(i in slots){
            crps.mat[count,] <- output[[i]]$model.crps
            x.axis[count] <- output[[i]]$theseParams[2]/output[[i]]$theseParams[1] #k/n_T
            y.axis[count] <- output[[i]]$theseParams[5]
            count <- count+1
}
    crps<-abs(apply(crps.mat,1,FUN=mean, na.rm=TRUE))

lo<-	loess(crps~x.axis+y.axis)
help(expand.grid)
lo<-	loess(crps~x.axis+y.axis)

xpred=seq(0,5,length.out=25)
ypred=seq(0,0.5,length.out=25)
for_pred=as.matrix(expand.grid(x=xpred,y=ypred))
tryThis <- predict(lo,newdata=for_pred)

col=gray(1000000:0/1000000)
library(lattice)
pdf("3D.pdf")
trellis.par.set("axis.line",list(col=NA,lty=1,lwd=1))

wireframe(tryThis~for_pred[,1]+for_pred[,2],xlab=expression(frac("N Models",N[T])), ylab="C", zlab="CRPS", drape=TRUE,lwd=0,col.regions=col,scales = list(arrows=FALSE, cex= 0.6, col = "black",font = 1, tck = 0.5),colorkey=F)
dev.off()





