#LIMPIEZA DE DATOS
x <- c(10,20,NA,30,NA,40)
print(is.na(x))

mean(x, na.rm=TRUE) #eliminamos los valores NA

#cargamos otro conjunto de datos
data("airquality")
airquality
df <- airquality

#CANTIDAD DE VALORES NA
sum(is.na(df)) #sumamos la cantidad de valores NA del dataframe
summary(df)
colSums(is.na(df)) #suma las columnas y obten los valores NA


#Computar por la mediana
#usamos na.rm = TRUE para eliminar valores NA
#Con estas operaciones eliminamos los varoles NA de nuestros datos
df$Ozone[is.na(df$Ozone)] <- median(df$Ozone, na.rm =TRUE)
df$Solar.R[is.na(df$Solar.R)] <- median(df$Solar.R, na.rm =TRUE)

#tambien podemos omitir los valores NA
df2 <-na.omit(airquality)
sum(is.na(airquality))

#CORRECCION DE OUTLIERS
boxplot(df)
par(mfrow=c(1,2))
boxplot(df$Ozone,col = "antiquewhite3",main = "Boxplot of Ozone",outcol="Blue",outpch=19,boxwex=0.7,range = 1.5)
hist(df$Ozone,col = "antiquewhite3",main = "Histogram of Ozone", xlab = "Observations",breaks = 15)


# Valores fuera del rango inter cuartílico
ric <- IQR(df$Ozone)
q2 <- quantile(df$Ozone,0.75)
sum(df$Ozone > q2+1.5*IQR(df$Ozone))
df[df$Ozone > q2+1.5*IQR(df$Ozone),]

data("Titanic")
df = as.data.frame(Titanic)
summary(df) 
# Transformación de la columnas categóricas a numérica
df$Class_num <- ifelse(df$Class=="1st",1,
                       ifelse(df$Class=="2nd",2,
                              ifelse(df$Class=="3rd",3,4)))

df$Sex_num <- ifelse(df$Sex=="Male",1,0)
df$Survived_num <- ifelse(df$Survived=="No",0,1)
df$Age_num <- ifelse(df$Age=="Child",1,0)

#One hot encoding - traforma todo en valores numericas binarias

install.packages("dummies")
library(dummies)
df3 <- dummy.data.frame(df)