#Regresión lineal de una variable
#cargamos un conjunto datos que ya viene en el paquete original de R 
data(cars)
cars
#pintamos la relacion entre la vvelocidad y la distancia de frenado
plot(cars$speed,cars$dist)

#Quiero obtener una recta de regresion que relacione ambas variables velocidad y distancia
#lm viene de linear model
modelo <-lm(dist ~ speed, data = cars)
summary(modelo)
#R cuadrado/r-squared es el cuadrado de la correlacion entre las dos variables
#esto nos dice que la variable de velocidad consigue explicar un 65% de la variable de la distancia de frenado
#Multiple R-squared:  0.6511,	Adjusted R-squared:  0.6438 
#F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12


#pintamos la recta de regresion
abline(modelo$coefficients[1], modelo$coefficients[2], col ="red")


#Predicción
predict(modelo, data.frame(speed=10))

#RMSE -> vamos a medir el error cuadrático medio
#es la raiz cuadrada de la media del error al cuadrado
RMSE <- function(error){
  sqrt(mean(error^2))
}

# MAE -> es el error medio
#Es la media del valor absoluto del error
mae <- function(error){
  mean(abs(error))
}

pr = predict(modelo,cars)
error = pr ~ cars$dist
modelo$residuals

install.packages("carData")
library(carData)
data(Salaries)
head(Salaries)

modelo2 <- lm(salary~sex,data = Salaries)
summary(modelo2)
modelo2 <- lm(salary~., data = Salaries)
summary(modelo2)

# Predicción
predict(modelo2,data.frame(rank="Prof",discipline="A",yrs.since.phd=20,yrs.service=20,sex="Female"))

#Regresion Logística
#Se utiliza para predecir probabilidades
#cargamos datos
df <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(df)
table(df$admit) #vemos si el conjunto de datos esta balanceado

# Modelo de regresión logística
modelo <- glm(admit ~ gre+gpa+rank,data=df,family="binomial")
summary(modelo)

Predicción
x <- data.frame(gre=790,gpa=3.8,rank=1)
p<- predict(modelo,x, type="response")
p

# Evaluar modelo
prediccion_prob<- predict(modelo,df,type="response")
summary(prediccion_prob)
#creamos una columna con las predicciones
df$prediccion_prob <-  prediccion_prob

