#Relacion entre variables
#Chi-cuadrado
#Creamos la tabla
datos <- as.table(matrix(c(5,1,3,10,8,3), ncol=3))
colnames(datos) <- c('Alta', 'Media','Baja')
rownames(datos) <- c('Hombre', 'Mujer')
datos
chisq.test(datos)
#como regla general cuando el valor p es inferior al 0.05 podemos decir que existe realcion entre la variables

df <- read.csv("https://goo.gl/j6lRXD")
table(df$treatment, df$improvement)
chisq.test(table(df$treatment, df$improvement))
#resultado de chiq.test -> X-squared = 4.6626, df = 1, p-value = 0.03083
#Viendo p-value se puede adegurar al 97% que las variables estan relacionadas



# ANOVA
insectos <- c(16,11,20,21,14,7,37,32,15,25,39,41,21,12,14,17,13,17,45, 59,48,46,38,47)
colores <- as.factor(c(rep(c("azul", "verde", "blanco","amarillo"), each =6)))
colores
fm = aov(insectos ~ colores) ##aov funcion para ver si hay relacion entre insectos y colores
summary(fm)

#comprobamos otro conjunto de datos tambien con el metodo anova
data(iris)
iris
summary(aov(iris$Petal.Length ~ iris$Species))
#RESULTADO: Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#En el metodo anova, tambien tenemos la pista de los astericos,
#los 3 asteriscos son el numero mas elevado de  relacion entre variables

# Coeficiente de correlación
horas <- c(7,4,12,11,8,6,11,5)
peso <- c(74,50,89,84,65,60,70,52)
cor(horas,peso)
cor.test(horas,peso)

# Matriz de correlación
install.packages("corrplot")
library(corrplot)
corrplot(cor(iris[,1:4]), type = "upper")

library(readr)
Ownership <- read_csv("https://wiki.q-researchsoftware.com/images/b/b9/Ownership.csv")
corrplot(cor(Ownership),type = "upper")