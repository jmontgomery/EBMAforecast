library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GITHUB/EBMAforecast/")

# Only need to run this portion once
current.code <- as.package("EBMAforecast")
load_all(current.code)
document(current.code)
install(current.code)

# Once it's installed, you can look at the demo
library(EBMAforecast)
demo(EBMAforecast)

help(EBMAforecast)