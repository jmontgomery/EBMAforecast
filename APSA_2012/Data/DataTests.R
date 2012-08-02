##### Making sure the data is correct, using rowSums and columSums of the new dataset
rm(list=ls(all=TRUE))

setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
new_data<-read.csv("unemployment_data.csv")
head(new_data)
new.row<-paste(new_data$forecast.year.quarter,new_data$variable,sep=".")


only_forecast<-new_data[,-c(1,2,3,4)]
head(only_forecast)


test<-as.data.frame(rowSums(only_forecast, na.rm=TRUE))
rownames(test)<-new.row
test<-test[order(rownames(test)),]

test1<-test[-c(1,3,5,7,352,354,356)]
old_data<-read.csv("Individual_UNEMP.csv")

head(old_data)

### keep only quarter, year, UNEMP3, UNEMP6
old_data<-old_data[,c("year","quarter","UNEMP3","UNEMP6")]

head(old_data)
old_data$year<-as.numeric(old_data$year)
old_data$quarter<-as.numeric(old_data$quarter)

#old_data<-old_data[,-c(1,2)]
#get rid of -999
old_data$UNEMP3<-ifelse(old_data$UNEMP3==-999,0,old_data$UNEMP3)

old_data$UNEMP6<-ifelse(old_data$UNEMP6==-999,0,old_data$UNEMP6)

for_com<-aggregate(old_data,by=list(old_data$year, old_data$quarter),FUN=sum)
summary(for_com)


for_com1<-for_com[,c("Group.1","Group.2","UNEMP3")]
for_com1$Var<-"UNEMP3"
names(for_com1)<-c("year","quarter","old_data","Var")
for_com1$quarter<-for_com1$quarter+1
for_com1$year<-for_com1$year
for_com1$year<-ifelse(for_com1$quarter==5,for_com1$year+1,for_com1$year)
for_com1$quarter<-ifelse(for_com1$quarter==5,1,for_com1$quarter)
old_data$year.quarter<-paste(old_data$year,old_data$quarter,sep=".")


for_com2<-for_com[,c("Group.1","Group.2","UNEMP6")]
for_com2$Var<-"UNEMP6"
names(for_com2)<-c("year","quarter","old_data","Var")
for_com2$year<-for_com2$year+1

for_com<-rbind(for_com1,for_com2)
for_com$year.quarter<-paste(for_com$year,for_com$quarter,sep=".")

new_row(1,3,5,7,)
blub<-paste(for_com$year.quarter,for_com$Var,sep=".")
new_row<-new.row[-c(1,3,5,7,352,354,356)]
new_row==rownames(for_com)

rownames(for_com)<-blub
for_com<-for_com[order(rownames(for_com)),]
test1==for_com[,3]  #correct!


rm(list=ls(all=TRUE))


setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Data")
new_data<-read.csv("unemployment_data.csv")
head(new_data)

for_test<-new_data[,-c(1,2,3,4)]
head(for_test)
for_test<-colSums(for_test,na.rm=TRUE)

old_data<-read.csv("Individual_UNEMP.csv")

head(old_data)

### keep only quarter, year, UNEMP3, UNEMP6
old_data<-old_data[,c("id","UNEMP3","UNEMP6")]

head(old_data)

old_data$UNEMP3<-ifelse(old_data$UNEMP3==-999,0,old_data$UNEMP3)

old_data$UNEMP6<-ifelse(old_data$UNEMP6==-999,0,old_data$UNEMP6)
head(old_data)
for_com<-aggregate(old_data,by=list(old_data$id),FUN=sum)
head(for_com)
for_com$sum<-for_com$UNEMP3+for_com$UNEMP6
for_com<-for_com[order(for_com$Group.1),]
round(for_test,3)==round(for_com$sum,3) #correct!