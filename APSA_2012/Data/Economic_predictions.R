rm(list=ls(all=TRUE))
#setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
setwd("~Github/EBMAforecast/APSA_2012/Data")
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
unemp_new$year.quarter<-as.numeric(unemp_new$year.quarter)

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
unemp_true<-unemp_true[,c("X","Realiz5")]

head(unemp_true)

# mark NAs
#unemp_true$RUC12M5<-ifelse(unemp_true$RUC12M5=="#N/A",NA,unemp_true$RUC12M5)

new<-t(as.data.frame((strsplit(as.character(unemp_true$X), ":"))))
new<-as.data.frame(new)
names(new)<-c("year","quarter")

dim(new)

unemp_true<-data.frame(cbind(unemp_true,new))
head(unemp_true)
unemp_true$year<-(as.numeric(unemp_true$year)+1967)
unemp_true$quarter<-as.numeric(unemp_true$quarter)
head(unemp_true)
true_un<-unemp_true[,c("Realiz5","year","quarter")]
true_un<-subset(true_un,true_un$year>1947)
summary(true_un)
#true_un<-aggregate(true_un, by=list(true_un$year,true_un$quarter),FUN=mean)
true_un$year.quarter<-paste(true_un$year,true_un$quarter,sep=".")
true_un$year.quarter<-as.numeric(true_un$year.quarter)
true_un<-true_un[,c(1,4)]
head(true_un)
names(true_un)[1]<-"Unemployment_Truth"

##now merge true data and forecasts
unemployment_data<-merge(true_un, unemployment_forecast, by=("year.quarter"),all.x=TRUE,all.y=TRUE)
unemployment_data<-unemployment_data[,-3]
save(unemployment_data,file="unemployment_data.RData")

head(unemployment_data)

############ do the same for cpi data
rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
library(reshape)


cpi<-read.csv("CPI.csv")
#keep only 1 and 4 quarter predictions
cpi<-cpi[,c("year","quarter","id","industry","CPI3","CPI6")]
head(cpi)
summary(cpi)
## replace -999 with NA
cpi$id<-ifelse(cpi$id==-999,NA,cpi$id)
cpi$industry<-ifelse(cpi$industry==-999,NA,cpi$industry)
cpi$CPI3<-ifelse(cpi$CPI3==-999,NA,cpi$CPI3)
cpi$CPI6<-ifelse(cpi$CPI6==-999,NA,cpi$CPI6)


#create year.quarter variable
cpi$year.quarter<-paste(cpi$year,cpi$quarter,sep=".")
head(cpi)
cpi<-subset(cpi,year>1982)

##drop year, quarter and industry for now
cpi<-cpi[,-c(1,2,4)]

melt=melt(cpi,id.vars=c("id","year.quarter"))
head(melt)

cpi_forecast=cast(melt,year.quarter +variable ~ id)
head(cpi_forecast)
summary(cpi_forecast)
cpi_forecast$year.quarter<-as.numeric(cpi_forecast$year.quarter)
summary(cpi_forecast)

cpi_true<-read.csv("True_cpi.csv")
head(cpi_true)
## drop all vintages before 2012 may
cpi_true<-cpi_true[,c("X","Realiz5")]

head(cpi_true)

# mark NAs, divide by 100 to bring to % points
#cpi_true$Realiz5<-ifelse(cpi_true$Realiz5=="#N/A",NA,cpi_true$Realiz5)
new<-t(as.data.frame((strsplit(as.character(cpi_true$X), ":"))))
new<-as.data.frame(new)
names(new)<-c("year","quarter")

dim(new)

cpi_true<-data.frame(cbind(cpi_true,new))
head(cpi_true)
cpi_true$year<-(as.numeric(cpi_true$year)+1967)
cpi_true$quarter<-as.numeric(cpi_true$quarter)
head(cpi_true)
true_cpi<-cpi_true[,c("Realiz5","year","quarter")]
true_cpi<-subset(true_cpi,true_cpi$year>1982)
summary(true_cpi)
true_cpi$year.quarter<-paste(true_cpi$year,true_cpi$quarter,sep=".")
true_cpi<-true_cpi[,-c(2,3)]
head(true_cpi)
true_cpi$year.quarter<-as.numeric(true_cpi$year.quarter)
names(true_cpi)[1]<-"CPI_Truth"
##now merge true data and forecasts
cpi_data<-merge(true_cpi, cpi_forecast, by=("year.quarter"),all.x=TRUE,all.y=TRUE)
save(cpi_data,file="cpi_data.RData")



