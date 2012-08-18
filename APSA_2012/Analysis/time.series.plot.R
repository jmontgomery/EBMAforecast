## time series plot code for mike
rm(list=ls())

#change working directory
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Analysis")
setwd("/Users/mw160/git/EBMAforecast/APSA_2012/Analysis")
#load data of estimations results 
load("estimation.results.Rdata") #object all with median, mean SPF and green book pred
load("estimation.time.RData") ## object .time with time variable
load("ebma.est.RData") ## object .redOut with EBMA pred

library(RColorBrewer)
mycols<-brewer.pal(4,"Set3")


#change working directory to paper folder
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Paper")
setwd("/Users/mw160/git/EBMAforecast/APSA_2012/Paper")

#MDW Attempt
### A basic plot of all 3, and observed
pdf(height=4, width=7, file="mdwtimeSeries2.pdf")
par(mar=c(2,2,.5,2), mfrow=c(1,1), mgp=c(1,0.25,0), tcl=0)
mycols <- c("gray90",rgb(241,163,64,maxColorValue=255), rgb(230, 97, 1,maxColorValue=255), rgb(35, 132, 67,maxColorValue=255))
mywidths <- c(10,8,4,4)
plot(.time, .redOut, type="l", lwd=mywidths[1], ylab="", xlab="", main="", bty="n", las=1,col=mycols[1],xlim=c(1981,2008),axes=F)
myyears<-c("1980","1985","1990","1995","2000","2005","2008")
axis(1,at=c(1980,1985,1990,1995,2000,2005,2008),labels=myyears,cex.axis=.9)

for(i in 1:3){
  lines(.time, all[,i], col=mycols[i+1], lty=1, lwd=mywidths[i+1])
}
mytxtcol<-mycols
mytxtcol[1]<-"black"

legend(1998, 10, c("Observed", "EBMA", "Median", "Green Book"), col=mycols, lty=c(1),bty="n",lwd=5,text.col=mytxtcol)
dev.off()



### A basic plot of all 3
pdf(height=4, width=7, file="timeSeries2.pdf")
par(mar=c(2,2,.5,2), mfrow=c(1,1), mgp=c(1,0,0), tcl=0)
plot(.time, .redOut, type="l", lwd=3, ylab="", xlab="Year", main="", bty="n", las=1,col=mycols[1])
#mycols <- c("blue", "red", "darkgreen")
for(i in 1:3){
  lines(.time, all[,i], col=mycols[i+1], lty=1+i, lwd=3)
}
legend(2000, 10, c("Observed", "EBMA", "Median", "Green Book"), col=mycols, lty=c(1, 2,3,4),bty="n",lwd=3)
dev.off()
