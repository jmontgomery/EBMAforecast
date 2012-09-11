library(foreign)
setwd("~/Documents/GIT/EBMAforecast/PresForecastPS")
holbrook<-read.dta("Holbrook_data_for_Ward.dta")
data.holbrook<-subset(holbrook,year<2012)
head(holbrook)

model.holbrook<-lm(vote~conditions+openseat+conditions*openseat,data=data.holbrook)
insample.holbrook<-fitted(model.holbrook)
years<-data.holbrook$year
insample.holbrook<-data.frame(years,insample.holbrook)
names(insample.holbrook)<-c("Year","Holbrook")

data.campbell<-read.csv("Campbell_data.csv")
head(data.campbell)
insample.campbell.trialheat<-data.campbell[,c("YEAR","PREDICT1")]
insample.campbell.bump<-data.campbell[,c("YEAR","PREDICT2")]
names(insample.campbell.trialheat)<-c("Year","Campbell.trialheat")
names(insample.campbell.bump)<-c("Year","Campbell.bump")


cuzan.data<-read.csv("data_cuzan2.csv")
summary(cuzan.data)



cuzan.long<-subset(cuzan.data,YEAR>1879 & YEAR<2012)
cuzan.short<-subset(cuzan.data,YEAR>1915& YEAR<2012)

#results not exactly the same
cuzan1.short<-lm(VOTE2~FISCAL_2012+GROWTH+ALLNEWS+DURATION+PARTY,data=cuzan.short)
cuzan1.long<-lm(VOTE2~FISCAL_2012+GROWTH+ALLNEWS+DURATION+PARTY,data=cuzan.data)
cuzan2.long<-lm(VOTE2~FPRIME_2012+GROWTH+ALLNEWS  +DURATION+PARTY,data=cuzan.data)
cuzan2.short<-lm(VOTE2~FPRIME_2012+GROWTH+ALLNEWS+DURATION+PARTY,data=cuzan.short)
summary(cuzan1.long)
summary(cuzan2.long)
summary(cuzan1.short)
summary(cuzan2.short)


years.long<-cuzan.long[,"YEAR"]
years.short<-cuzan.short[,"YEAR"]

insample.cuzan1.short<-fitted(cuzan1.short)
insample.cuzan2.short<-fitted(cuzan2.short)
insample.cuzan1.long<-fitted(cuzan1.long)
insample.cuzan2.long<-fitted(cuzan2.long)
insample.cuzan.short<-data.frame(years.short,insample.cuzan1.short,insample.cuzan2.short)
insample.cuzan.long<-data.frame(years.long,insample.cuzan1.long,insample.cuzan2.long)
names(insample.cuzan.short)<-c("Year","Cuzan1.short","Cuzan2.short")
names(insample.cuzan.long)<-c("Year","Cuzan1.long","Cuzan2.long")


hibbspreds <- read.csv("Predictions_hibbs.csv")
insample.hibbs<-hibbspreds[,c("Year","Point_Pred")]
names(insample.hibbs)<-c("Year","Hibbs")



lockerbie<-read.csv("~/Documents/GIT/EBMAforecast/PresForecastPS/LockerbieData.csv")
insample.lockerbie<-lockerbie[,c("Year","Forecast")]
names(insample.lockerbie)<-c("Year","Lockerbie")

merge1<-merge(insample.campbell.trialheat,insample.campbell.bump,by="Year",all.x=TRUE,all.y=TRUE)
merge2<-merge(merge1,insample.holbrook,by="Year",all.x=TRUE,all.y=TRUE)
merge3<-merge(merge2,insample.cuzan.long,by="Year",all.x=TRUE,all.y=TRUE)
merge4<-merge(merge3,insample.cuzan.short,by="Year",all.x=TRUE,all.y=TRUE)
merge5<-merge(merge4,insample.hibbs,by="Year",all.x=TRUE,all.y=TRUE)
insample.data<-merge(merge5,insample.lockerbie,by="Year",all.x=TRUE,all.y=TRUE)






### Berry data
#library(foreign)

#berry<-read.dta("~/Documents/GIT/EBMAforecast/PresForecastApsa/Berry_forecast_data.dta")
#head(berry)
#berry_new<-berry[,c("year","voters","dpvoteest1","rpvoteest1")]
#berry
#berry_aggregate <-aggregate(berry_new, by=list(berry_new$year), FUN=sum)
#head(berry_aggregate)
#berry_aggregate<-berry_aggregate[,-2]
#names(berry_aggregate)[1]<-"year"

#berry_est<-berry_aggregate
#berry_est$rep_share<-berry_est$rpvoteest1/berry_est$voters
#berry_est$dem_share<-berry_est$dpvoteest1/berry_est$voters




#berry_est$inc.share<-NA
#berry_est$inc.share<-ifelse(berry_est$year==1980,berry_est$dem_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==1984,berry_est$rep_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==1988,berry_est$rep_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==1992,berry_est$rep_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==1996,berry_est$dem_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==2000,berry_est$dem_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==2004,berry_est$rep_share,berry_est$inc.share)
#berry_est$inc.share<-ifelse(berry_est$year==2008,berry_est$rep_share,berry_est$inc.share)
#head(berry_est)

#berry<-berry_est[,c("year","inc.share")]
#names(berry)<-c("Year","berry")
#berry$berry<-berry$berry*100
#insample.data<-merge(insample.data,berry,by="Year",all.x=TRUE,all.y=TRUE)


berry_forecast<-c(44.40,58.61,53.16,47.58,54.00,49.34,51.68,45.05,47.14)
Year<-c(1980,1984,1988,1992,1996,2000,2004,2008,2012)
berry<-data.frame(cbind(Year, berry_forecast))
names(berry)<-c("Year","berry")
insample.data<-merge(insample.data,berry,by="Year",all.x=TRUE,all.y=TRUE)

save(insample.data, file="insample.data.RData")

rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/PresForecastPS")

load("insample.data.RData")
erikson.insample<-read.csv("Erikson_Wlezien_forecast.csv")

head(insample.data)
insample.data<-merge(insample.data,erikson.insample,by="Year",all.x=TRUE,all.y=TRUE)

insample.data
save(insample.data,file="insample.data.RData")


rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/PresForecastPS")

load("insample.data.RData")
abramowitz.insample<-read.csv("Abramowitz_forecast.csv")

head(insample.data)
insample.data<-merge(insample.data,abramowitz.insample,by="Year",all.x=TRUE,all.y=TRUE)
lewisbeck<-read.csv("Lewis-Beck_Tien_forecasts.csv")
insample.data<-merge(insample.data,lewisbeck,by="Year",all.x=TRUE,all.y=TRUE)


norpoth<-read.csv("norpoth_forecast.csv")
norpoth$Norpoth_inc<-ifelse(norpoth$repub_inc==1,100-norpoth$Norpoth,norpoth$Norpoth)
norpoth2<-norpoth[,c("Year","Norpoth_inc")]
insample.data<-merge(insample.data,norpoth2,by="Year",all.x=TRUE,all.y=TRUE)

insample.data<-insample.data[-c(34,35),]
save(insample.data,file="insample.data.RData")


rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/PresForecastPS")

load("insample.data.RData")
data_2012<-insample.data[1,]

data_2012<-data_2012[,-1]
rownames(data_2012)<-2012
data_2012[1,5]<-NA
data_2012[1,4]<-NA


### current 2012 forecasts
data_2012["2012","Erikson.Wlezien"]<-52.6
data_2012["2012","Holbrook"]<-47.9
data_2012["2012","berry"]<-47.14
data_2012["2012","Hibbs"]<-47.5
data_2012["2012","Lockerbie"]<-53.8
data_2012["2012","Campbell.trialheat"]<-52.0
data_2012["2012","Campbell.bump"]<-51.3
data_2012["2012","Abramowitz"]<-50.6
data_2012["2012","Lewis.Beck_Tien_Jobs"]<-48.2
data_2012["2012","Lewis.Beck_Tien_Proxy"]<-52.7
data_2012["2012","Cuzan1.short"]<-45.5
data_2012["2012","Cuzan2.short"]<-46.9
data_2012["2012","Norpoth_inc"]<-53.2

 save(data_2012,file="data_2012.RData")
 
 