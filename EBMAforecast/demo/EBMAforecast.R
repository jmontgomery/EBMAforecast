# Ensemble.ICEWS demo file


##### New code here

data(Insample)
data(Outsample)


################################################
# This is the analysis *WITHOUT* the ICEWS model
################################################

in.data <- cbind(Insample[,"Polisci"], Insample[,"Glm.Econ"], Insample[,"Lmer3"], Insample[,"Glm.simple"],
                 Insample[,"Lmer.all"], Insample[,"SAE"])
colnames(in.data)<-c("Polisci", "GLM.Econ", "Lmer3", "Glm.simple", "Lmer.all", "SAE")

out.data <- cbind(Outsample[,"Polisci"], Outsample[,"Glm.Econ"], Outsample[,"Lmer3"], Outsample[,"Glm.simple"],
                 Outsample[,"Lmer.all"], Outsample[,"SAE"])

y.in <- Insample$Insurgency
y.out <- Outsample$Insurgency

# Fit the BMA Model
#BMA.fit <- Ensemble.logit(y=y.in, pp.raw=in.data, tol=.001, exp=4)

# These are the within-sample model statistics/estimates for the parameters shown in the paper
#print.Ensemble.logit(BMA.fit)

# Within-sample plots
#plot.Ensemble.logit(BMA.fit)

# Make out-of-sample predictions
#BMA.pred <- predict.Ensemble.logit(obj=BMA.fit, newdata=out.data, y.out=y.out)

# These are the out-of-sample model statistics (Model parameters are passed from the fit)
#print.Ensemble.logit(BMA.pred)

# Out-of sample plots
#plot.Ensemble.logit(BMA.pred)

