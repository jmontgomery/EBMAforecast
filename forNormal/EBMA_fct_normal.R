#rm(list=ls(all=TRUE))
this.ForecastData <- as(this.ForecastData, "ForecastDataNormal")






fitEnsemble(this.ForecastData)
