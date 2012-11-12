setwd("~/Documents/GIT/EBMAforecast/APSA_2012/Simulations")

load("~/Dropbox/EBMA/ResultsOfSims")
objects()

summary(output)
summary(output[[1]]$theseParams)
for(i in 1:50){
	print(output[[i]]$theseParams)
	}
	
	
	
output[[1]]