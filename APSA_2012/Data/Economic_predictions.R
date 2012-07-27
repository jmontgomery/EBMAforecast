rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
library(reshape)


unemp<-read.csv("Individual_UNEMP.csv")
head(unemp)
#keep only 1 and 4 quarter predictions
unemp_new<-unemp[,c("year","quarter","id","industry","UNEMP3","UNEMP6")]

## replace -999 with NA
unemp_new$id<-ifelse(unemp_new$id==-999,NA,unemp_new$id)
unemp_new$industry<-ifelse(unemp_new$industry==-999,NA,unemp_new$industry)
unemp_new$UNEMP3<-ifelse(unemp_new$UNEMP3==-999,NA,unemp_new$UNEMP3)
unemp_new$UNEMP6<-ifelse(unemp_new$UNEMP6==-999,NA,unemp_new$UNEMP6)

#create year.quarter variable
unemp_new$year.quarter<-paste(unemp$year,unemp$quarter,sep=".")
head(unemp_new)
##drop year, quarter and industry for now
unemp_new<-unemp_new[,-c(1,2,4)]

melt=melt(unemp_new,id.vars=c("id","year.quarter"))
head(melt)

unemployment_forecast=cast(melt,year.quarter +variable ~ id)
head(unemployment_forecast)

unemp_true<-read.csv("True_unemp.csv")
head(unemp_true)
## drop all vintages before 2012 may
unemp_true<-unemp_true[,c("X","RUC12M5")]

head(unemp_true)

# mark NAs
unemp_true$RUC12M5<-ifelse(unemp_true$RUC12M5=="#N/A",NA,unemp_true$RUC12M5)

new<-t(as.data.frame((strsplit(as.character(unemp_true$X), ":"))))
new<-as.data.frame(new)
names(new)<-c("year","month")

dim(new)

unemp_true<-data.frame(cbind(unemp_true,new))
head(unemp_true)
unemp_true$year<-(as.numeric(unemp_true$year)+1946)
unemp_true$month<-as.numeric(unemp_true$month)
unemp_true$quarter<-NA
unemp_true$quarter<-ifelse(unemp_true$month<4,1,unemp_true$quarter)
unemp_true$quarter<-ifelse(unemp_true$month>3 & unemp_true$month<7,2,unemp_true$quarter)
unemp_true$quarter<-ifelse(unemp_true$month>6 & unemp_true$month<9,2,unemp_true$quarter)
unemp_true$quarter<-ifelse(unemp_true$month>8,4,unemp_true$quarter)
head(unemp_true)
true_un<-unemp_true[,c("RUC12M5","year","quarter")]
true_un<-subset(true_un,true_un$year>1947)
summary(true_un)
true_un<-aggregate(true_un, by=list(true_un$year,true_un$quarter),FUN=mean)
true_un$year.quarter<-paste(true_un$year,true_un$quarter,sep=".")
true_un<-true_un[,-c(1,2,4,5)]
head(true_un)

unemployment_data<-merge(true_un, unemployment_forecast, by=("year.quarter"),all.x=TRUE,all.y=TRUE)
save(unemployment_data,file="unemployment_data.RData")