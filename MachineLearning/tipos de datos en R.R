#TIPOS DE DATOS

#character
"hola"
"123"
"23mm"

#numeric
23
pi
3.5

#los integer tienen una L mayuscula al lado
#integer
23L
2L


#logical
TRUE
FALSE
T
F

#para conocer el tipo de dato se utiliza la funcion class()
x <- 3
print(class(x))

#Es posible realizar cambios entre tipos de datos
#pasamos de un dato de tipo character a uno numeric
as.numeric("122")
#el operador True puede ser pasado a numeric y dara 1
as.numeric(TRUE)

#OPERADORES COMPARATIVOS Y LOGICOS
7 < 5
8 > 3
3 <= 1
3 != 3
3 > 1 & 2 > 0

#vector
#los datos del vector deben ser todos del mismo tipo
x <- vector #vector vacio
x_numeric <- c(1.5,2.5,6.7)
x_character<- c ("Maria","Antonia")
x_logical <- c (TRUE, FALSE, TRUE, FALSE)

char <- as.character(x_numeric)
print(length(x_numeric))

#en R el primer elemento de un vector ocupa la posicion 1
v <- c (1,3,5,7,9,11)
print(v[3])
print(v[v>5 & v < 11])

#Operaciones aritmeticas con vectores
v1 <- c(1,2,3)
v2<- c (4,5,6)
v1+v2
v1*v2
#posicion del valor minimo 
which.min(v2)

#SECUENCIAS
#Secuencia ordenada
print(1:10)
#secuencias regulares
print(seq(from=4, to =20, by=2))
#Secuencias aleatorrias
alatorio <- c (sample(5))
cat("El de aleatorio es: ", alatorio,"\n")
resultado_rnorm <- rnorm(3,mean=5,sd =2)
cat("El resultado de runif es: ",runif(4,min=2, max = 8),"\n") 


#LISTAS
#Contienen elementos de diferentes tipos y tamaños

x<-list(temperatura = c(10,20,30),
        unidades = c ("C", "F"))

print(x$temperatura[2])
#añadir nuevos elementos a la lista
x$error <- c (0.1,0.2)
print(x)


f <-factor(c("H","M","H","M","H","M"))

print(f)
#podemos transdormarlo
as.character(f)

#DATA FRAMES
df <- data.frame(Ciudad = c("Madrid","Bilbao","Sevilla"),
                 Habitantes = c(150,220,400),
                 Precipitaciones = c(25,13,2))


print(nrow(df))#mostarr filas
print(ncol(df))#mostrarcolumnas
print(names(df))#mostrar bimbres
print(df$Ciudad)
print("--------------------------------------------------------")
print(df[,2:3])
print("--------------------------------------------------------")
print(df[1:2])

#Borrar una columna
df$Habitantes <- NULL

#FILTRAR DATOS
subset(df, Precipitaciones>20)

data("ChickWeight")

print(head(ChickWeight))
print(tail(ChickWeight))
print(summary(ChickWeight))

#Valores únicos
print(length(unique(ChickWeight$Chick)))

#Filtrar con varias condiciones
subset(ChickWeight, Diet == 4 & Time==21)

#Ordenar columnas
ChickWeight[order(- ChickWeight$weight),]

ChickWeight$weightperday <- ChickWeight$weight/ (ChickWeight$Time+1)
ChickWeight$weightperday <- NULL

#ELiminar Filas
df2 <- ChickWeight[-c(578),]

#COMBINACION DE DATA FRAMES
#merge()
df1<- data.frame(Ciudad=c("Madrid","Bilbao","Sevilla"),
                 Habitantes=c(150,200,40),
                 Precipitaciones=c(25,13,2))
df2 <- data.frame(Ciudad=c("Bilbao","Sevilla"), Temperatura=c(10,20))
dfT <- merge(df1,df2,by="Ciudad")
dfT
dfT2 <- merge(df1,df2,all=TRUE)
dfT2


#cbind() combinar columnnas
df3 <- data.frame(PIB=c(97,33,44),Paro=c(10,12,15))
df3
cbind(df1,df3)

# rbind combinar filas
df4 <- data.frame(Ciudad="Valencia",Habitantes=100,Precipitaciones=5)
rbind(df1,df4)

# Agregar datos
data(ChickWeight)
aggregate(weight~Diet,ChickWeight,mean) # Calcula la media del peso por cada una de las dietas 
aggregate(.~Diet,ChickWeight,mean) # Calcula la media de todas las variables por cada una de las dietas
aggregate(weight~Diet,ChickWeight,max)#calcula el maximo del peso en funcion de la dieta y la gallina
aggregate(cbind(weight,Time)~Diet,ChickWeight,min) # Calcula el mínimo de Time y weight por cada una de las dietas


