rm(list=ls(all=TRUE))
library(RColorBrewer)
#setwd("~/Documents/GitHub/EBMAforecast/APSA_2012/Simulations")
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
plot(x.axis, crps, ylim=c(5, 10.5), xlab="k/n_t")





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

tryThis <- predict(loess(crps~x.axis+y.axis))

col=gray(1000000:0/1000000)
library(lattice)
pdf("3D.pdf")
wireframe(tryThis~x.axis+y.axis,xlab="k/n_t", ylab="c", zlab="crps", drape=TRUE,lwd=0,col.regions=col)
dev.off()
help(lattice.getOption)



