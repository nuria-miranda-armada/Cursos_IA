set.seed(500)
library(MASS)

data <- Boston

# División train-test
index <- sample(1:nrow(data),round(0.80*nrow(data)))
train <- data[index,]
test <- data[-index,]


# Comprobar si hay valores NA
miss <- colSums(is.na(train))
miss

#cargamos las librerias necesarias
#install.packages("Boruta")
library(Boruta)

# Importancia de variables
boruta_output <- Boruta(medv ~ ., data=train, doTrace=2, maxRuns = 50)  # perform Boruta search
boruta_signif<- names(boruta_output$finalDecision[boruta_output$finalDecision %in% c("Confirmed", "Tentative")])  # collect Confirmed and Tentative variables
plot(boruta_output, las=2, xlab="", main="Variable Importance")  # plot variable importance





# Modelo de regresión Lineal
lm.fit <- lm(medv~., data=train)
summary(lm.fit)
# Predicción
pr.lm <- predict(lm.fit,test)
# Error MSE
MSE.lm <- sum((pr.lm - test$medv)^2)/nrow(test)
print(MSE.lm) 
# Error en porcentaje
error_porcentaje.lm = 100*mean((pr.lm-test$medv)/test$medv)
print(error_porcentaje.lm) 
# Scatter plot predicción y realidad
plot(test$medv,pr.lm)
abline(0,1,col="red")
cor(test$medv,pr.lm)^2 # coeficiente R^2 






# Modelo de redes neuronales

# Normalizo los datos de entrenamiento
train_norm <- train
for (k in 1:14){
  train_norm[,k]=(train[,k]-mean(train[,k]))/(max(train[,k])-min(train[,k]))
}

#cargamos las librerias necesarias
install.packages("neuralnet")
library(neuralnet)

# Aplico el modelo
nn <- neuralnet(medv ~ crim + zn + indus + chas 
                + nox + rm + age + dis + rad + tax + ptratio +
                  black + lstat
                ,data=train_norm,
                hidden=c(13), # 13 neuronas en la capa oculta
                act.fct = "tanh", # Función de activación de tipo tanh
                linear.output=T)
# Plot de la red neuronal
plot(nn)



# Normalizo los datos de test
test_norm <- test
for (k in 1:14){
  test_norm[,k]=(test[,k]-mean(train[,k]))/(max(train[,k])-min(train[,k]))
}





# Predicción con el conjunto de test
pr.nn <- compute(nn,test_norm[,1:13])
# Des-normalización de las predicciones
pred.nn = pr.nn$net.result*(max(train[,14])-min(train[,14]))+mean(train[,14])
# Error MSE
MSE.nn <- sum((test$medv - pred.nn)^2)/nrow(test)
print(MSE.nn) 
error_porcentaje.nn = 100*mean((pred.nn-test$medv)/test$medv)
print(error_porcentaje.nn) 
# Comparo la predicción y los valores reales en un scatter plot
plot(test$medv,pred.nn)
abline(0,1,col="red")
cor(test$medv,pred.nn)^2 # Coeficiente R^2 





# RANDOM FOREST
#cargamos las librerias necesarias
install.packages("randomForest")

library(randomForest)


#MOdelo random forest
rf <- randomForest(medv~., data=train,ntree=500)
pr.rf <- predict(rf,test)
MSE.rf <- sum((pr.rf - test$medv)^2)/nrow(test)
print(MSE.rf) 
error_porcentaje.rf = 100*mean((pr.rf-test$medv)/test$medv)
print(error_porcentaje.rf) 
plot(test$medv,pr.rf)
abline(0,1,col="red")
cor(test$medv,pr.rf)^2 # R^2 




















