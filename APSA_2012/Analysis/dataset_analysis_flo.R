library("multicore")
library("foreach")
library("doMC")
library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GIT/EBMAforecast/")
#setwd("~/GITHUB/EBMAforecast/")


# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)



rm(list=ls())
ud <- read.csv("~/Documents/GIT/EBMAforecast/APSA_2012/Data/unemployment_data.csv", as.is=TRUE, header=TRUE, row.names=1)

ud1 <- subset(ud, variable=="UNEMP3")
ud4 <- subset(ud, variable=="UNEMP6")
ud4 <- subset(ud4, forecast.year.quarter>1983.2)

ud_sub<-ud4[,-c(1,2,3,430)]
dim(ud_sub)

for(i in 1:426){
	ud_sub[,i]<-ifelse(is.na(ud_sub[,i]),0,1)
}
row_mean<-rowMeans(ud_sub)
mean(row_mean)