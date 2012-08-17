rm(list=ls(all=TRUE))
setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
setwd("~/Github/EBMAforecast/APSA_2012/Data")
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

### split up unemp3 and unemp6 to make time reflect forecast quarter
unemp3_data<-unemp_new[,c("year","quarter","id","industry","UNEMP3")]
unemp3_data$quarter_new<-unemp3_data$quarter+1
unemp3_data$year_new<-unemp3_data$year
unemp3_data$year_new<-ifelse(unemp3_data$quarter_new==5,unemp3_data$year_new+1,unemp3_data$year_new)
unemp3_data$quarter_new<-ifelse(unemp3_data$quarter_new==5,1,unemp3_data$quarter_new)

unemp6_data<-unemp_new[,c("year","quarter","id","industry","UNEMP6")]
unemp6_data$quarter_new<-unemp6_data$quarter
unemp6_data$year_new<-unemp6_data$year+1

head(unemp3_data)
names(unemp3_data)<-c("survey.year","survey.quarter","id","industry","UNEMP3","forecast.quarter","forecast.year")
head(unemp6_data)
names(unemp6_data)<-c("survey.year","survey.quarter","id","industry","UNEMP6","forecast.quarter","forecast.year")


#create year.quarter variable
unemp3_data$survey.year.quarter<-paste(unemp3_data$survey.year,unemp3_data$survey.quarter,sep=".")
unemp3_data$survey.year.quarter<-as.numeric(unemp3_data$survey.year.quarter)
unemp3_data$forecast.year.quarter<-paste(unemp3_data$forecast.year,unemp3_data$forecast.quarter,sep=".")
unemp3_data$forecast.year.quarter<-as.numeric(unemp3_data$forecast.year.quarter)

unemp6_data$survey.year.quarter<-paste(unemp6_data$survey.year,unemp6_data$survey.quarter,sep=".")
unemp6_data$survey.year.quarter<-as.numeric(unemp6_data$survey.year.quarter)
unemp6_data$forecast.year.quarter<-paste(unemp6_data$forecast.year,unemp6_data$forecast.quarter,sep=".")
unemp6_data$forecast.year.quarter<-as.numeric(unemp6_data$forecast.year.quarter)
head(unemp3_data)
head(unemp6_data)


##drop survey dates, forecast.year, forecast.quarter and industry for now
unemp3_new<-unemp3_data[,-c(1,2,4,6,7,8)]
unemp6_new<-unemp6_data[,-c(1,2,4,6,7,8)]
head(unemp3_new)
head(unemp6_new)
unemp_formelt<-merge(unemp3_new,unemp6_new,by=c("id","forecast.year.quarter"),all.x=TRUE,all.y=TRUE)

melt=melt(unemp_formelt,id.vars=c("id","forecast.year.quarter"))
head(melt)

unemployment_forecast=cast(melt,forecast.year.quarter +variable ~ id)
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
#true_un<-subset(true_un,true_un$year>1947)
summary(true_un)
#true_un<-aggregate(true_un, by=list(true_un$year,true_un$quarter),FUN=mean)
true_un$year.quarter<-paste(true_un$year,true_un$quarter,sep=".")
true_un$year.quarter<-as.numeric(true_un$year.quarter)
true_un<-true_un[,c(1,4)]
head(true_un)
names(true_un)<-c("Unemployment_Truth","forecast.year.quarter")

##now merge true data and forecasts
unemployment_data<-merge(true_un, unemployment_forecast, by=("forecast.year.quarter"),all.x=TRUE,all.y=TRUE)
head(unemployment_data)
#unemployment_data<-unemployment_data[,-3]

#write.csv(unemployment_data,file="unemployment_data.csv")

greenbook<-read.csv("Greenbook_Unemp.csv")
head(greenbook)
#only 1 and 4 quarters out kept
greenbook<-greenbook[,c("year","quarter","GB_Unemp3","GB_Unemp6")]

gb_unemp3<-greenbook[,c("year","quarter","GB_Unemp3")]
gb_unemp6<-greenbook[,c("year","quarter","GB_Unemp6")]
#gb_unemp3$GB_Unemp3<-ifelse(gb_unemp3$GB_Unemp3=="#N/A",NA,gb_unemp3$GB_Unemp3)
#gb_unemp6$GB_Unemp6<-ifelse(gb_unemp6$GB_Unemp6=="#N/A",NA,gb_unemp6$GB_Unemp6)



gb_unemp3$forecast.quarter<-gb_unemp3$quarter+1
gb_unemp3$forecast.year<-ifelse(gb_unemp3$forecast.quarter==5,gb_unemp3$year+1,gb_unemp3$year)
gb_unemp3$forecast.quarter<-ifelse(gb_unemp3$forecast.quarter==5,1,gb_unemp3$forecast.quarter)
gb_unemp6$forecast.year<-gb_unemp6$year+1
gb_unemp6$forecast.quarter<-gb_unemp6$quarter	
	
gb_unemp3$Var<-"UNEMP3"
gb_unemp6$Var<-"UNEMP6"

gb_unemp3$forecast.year.quarter<-paste(gb_unemp3$forecast.year,gb_unemp3$forecast.quarter,sep=".")
gb_unemp6$forecast.year.quarter<-paste(gb_unemp6$forecast.year,gb_unemp6$forecast.quarter,sep=".")
gb_unemp3<-gb_unemp3[,-c(1,2,4,5)]
gb_unemp6<-gb_unemp6[,-c(1,2,4,5)]
names(gb_unemp3)<-"greenbook"
names(gb_unemp6)<-"greenbook"


greenbook_data<-rbind(gb_unemp3,gb_unemp6)
names(greenbook_data)<-c("greenbook","variable","forecast.year.quarter")
greenbook_data <- greenbook_data[order(greenbook_data$forecast.year.quarter, greenbook_data$variable),]
greenbook_data
unemployment_data<-merge(unemployment_data,greenbook_data,by=c("forecast.year.quarter", "variable"))
head(unemployment_data)


write.csv(unemployment_data,file="unemployment_data.csv")
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


### split up unemp3 and unemp6 to make time reflect forecast quarter
cpi3_data<-cpi[,c("year","quarter","id","industry","CPI3")]
cpi3_data$quarter_new<-cpi3_data$quarter+1
cpi3_data$year_new<-cpi3_data$year
cpi3_data$year_new<-ifelse(cpi3_data$quarter_new==5,cpi3_data$year_new+1,cpi3_data$year_new)
cpi3_data$quarter_new<-ifelse(cpi3_data$quarter_new==5,1,cpi3_data$quarter_new)

cpi6_data<-cpi[,c("year","quarter","id","industry","CPI6")]
cpi6_data$quarter_new<-cpi6_data$quarter
cpi6_data$year_new<-cpi6_data$year+1

head(cpi3_data)
names(cpi3_data)<-c("survey.year","survey.quarter","id","industry","CPI3","forecast.quarter","forecast.year")
head(cpi6_data)
names(cpi6_data)<-c("survey.year","survey.quarter","id","industry","CPI6","forecast.quarter","forecast.year")


#create year.quarter variable
cpi3_data$survey.year.quarter<-paste(cpi3_data$survey.year,cpi3_data$survey.quarter,sep=".")
cpi3_data$survey.year.quarter<-as.numeric(cpi3_data$survey.year.quarter)
cpi3_data$forecast.year.quarter<-paste(cpi3_data$forecast.year,cpi3_data$forecast.quarter,sep=".")
cpi3_data$forecast.year.quarter<-as.numeric(cpi3_data$forecast.year.quarter)

cpi6_data$survey.year.quarter<-paste(cpi6_data$survey.year,cpi6_data$survey.quarter,sep=".")
cpi6_data$survey.year.quarter<-as.numeric(cpi6_data$survey.year.quarter)
cpi6_data$forecast.year.quarter<-paste(cpi6_data$forecast.year,cpi6_data$forecast.quarter,sep=".")
cpi6_data$forecast.year.quarter<-as.numeric(cpi6_data$forecast.year.quarter)
head(cpi3_data)
head(cpi6_data)


##drop survey dates, forecast.year, forecast.quarter and industry for now
cpi3_new<-cpi3_data[,-c(1,2,4,6,7,8)]
cpi6_new<-cpi6_data[,-c(1,2,4,6,7,8)]
head(cpi3_new)
head(cpi6_new)
cpi_formelt<-merge(cpi3_new,cpi6_new,by=c("id","forecast.year.quarter"),all.x=TRUE,all.y=TRUE)

melt=melt(cpi_formelt,id.vars=c("id","forecast.year.quarter"))
head(melt)

cpi_forecast=cast(melt,forecast.year.quarter +variable ~ id)
head(cpi_forecast)


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
#true_cpi<-subset(true_cpi,true_cpi$year>1982)
summary(true_cpi)
true_cpi$forecast.year.quarter<-paste(true_cpi$year,true_cpi$quarter,sep=".")
true_cpi<-true_cpi[,-c(2,3)]
head(true_cpi)
true_cpi$forecast.year.quarter<-as.numeric(true_cpi$forecast.year.quarter)
names(true_cpi)[1]<-"CPI_Truth"
##now merge true data and forecasts
cpi_data<-merge(true_cpi, cpi_forecast, by=("forecast.year.quarter"),all.x=TRUE,all.y=TRUE)
head(cpi_data)
#write.csv(cpi_data,file="cpi_data.csv")



greenbook<-read.csv("Greenbook_CPI.csv")
head(greenbook)
#only 1 and 4 quarters out kept
greenbook<-greenbook[,c("year","quarter","GB_CPIdot3","GB_CPIdot6")]

gb_cpi3<-greenbook[,c("year","quarter","GB_CPIdot3")]
gb_cpi6<-greenbook[,c("year","quarter","GB_CPIdot6")]



gb_cpi3$quarter<-gb_cpi3$quarter
gb_cpi3$year<-ifelse(gb_cpi3$quarter==5,gb_cpi3$year+1,gb_cpi3$year)
gb_cpi3$quarter<-ifelse(gb_cpi3$quarter==5,gb_cpi3$quarter+1,gb_cpi3$quarter)
gb_cpi6$year<-gb_cpi6$year+1
	
gb_cpi3$Var<-"CPI3"
gb_cpi6$Var<-"CPI6"

gb_cpi3$forecast.year.quarter<-paste(gb_cpi3$year,gb_cpi3$quarter,sep=".")
gb_cpi6$forecast.year.quarter<-paste(gb_cpi6$year,gb_cpi6$quarter,sep=".")
gb_cpi3<-gb_cpi3[,-c(1,2)]
gb_cpi6<-gb_cpi6[,-c(1,2)]
names(gb_cpi3)<-"greenbook"
names(gb_cpi6)<-"greenbook"


greenbook_data<-rbind(gb_cpi3,gb_cpi6)
names(greenbook_data)<-c("greenbook","variable","forecast.year.quarter")
cpi_data<-merge(cpi_data,greenbook_data,by=c("forecast.year.quarter", "variable"))
write.csv(cpi_data,file="cpi_data.csv")

