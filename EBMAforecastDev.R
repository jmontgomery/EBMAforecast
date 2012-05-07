library(devtools)
library(roxygen2)
library(testthat)
library(plyr)
library(ensembleBMA)
library(separationplot)



current.code <- as.package("EBMAforecast")
load_all(current.code, reset=TRUE)
document(current.code)
new(Class="forecastData")

fake.data1 <- matrix(nrow(100, ncol=10))
fake.data2 <- matrix(nrow

makeForecastData()







         
          
ex#> setGeneric (
#+ name= "countMissing",
#+ def=function(object){standardGeneric("countMissing")}
#+ )
#[1] "countMissing"
#This add countMissing to the list of the methods that R knows. We can now deﬁne
#more speciﬁcally countMissing for the object trajectories:

setMethod() # This is how we make a new function for the class we are working on
# will also want to set the method for the "initialize" function to fine tune how an object is created.  But will need to use the validObject() command within it

i# Will need a:
          # 1) user friendly constructor
          # 2) accessors ... both get and set functions. (see section 7)
          
# Section 9 explains inheritance and section 10 explains internal modifications and easy handling of the environment
# some utilities
slotNames()
getSlots()
getClass()
showMethods()
existsMethod()

                                        #' The length of a string (in characters).
                                        #'
                                        #' @param string input character vector
                                        #' @return numeric vector giving number of characters in each element of the
                                        #'   character vector.  Missing string have missing length.
                                        #' @keywords character
                                        #' @seealso \code{\link{nchar}} which this function wraps
.names=NULL){
