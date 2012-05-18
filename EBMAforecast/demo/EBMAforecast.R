

data(Insample)
data(Outsample)

in.data <- cbind(Insample[,"Polisci"], Insample[,"Glm.Econ"], Insample[,"Lmer3"], Insample[,"Glm.simple"],
                 Insample[,"Lmer.all"], Insample[,"SAE"])
colnames(in.data)<-c("Polisci", "GLM.Econ", "Lmer3", "Glm.simple", "Lmer.all", "SAE")

out.data <- cbind(Outsample[,"Polisci"], Outsample[,"Glm.Econ"], Outsample[,"Lmer3"], Outsample[,"Glm.simple"],
                 Outsample[,"Lmer.all"], Outsample[,"SAE"])

y.in <- Insample$Insurgency
y.out <- Outsample$Insurgency


#makeForecastData
#calibrateEnsemble
#summary(results, calibration)
#plot(results, calibration)

#summary(results, test)
#plot(results, test)


