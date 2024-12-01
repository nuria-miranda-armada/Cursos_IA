# Machine Learning para principiantes

## Iniciacion a R

- Es un conjunto de programas integrados para el manejo de datos, simulaciones, cálculos yr ealización de gráficos.
- Es una implementación libre y _opensource_ del lenguaje de programación S, que due desarrollado a mediados de los 70 en Bell Labs

-Entre sus ventajas esta:
    - Permite manipular los datos de forma rápida y precisa
    - Fácil automatización
    - Lee casi cualquier tipo de datos
    - Compatible con grandes conjuntos de datos
    - Gratuito
    - Capacidades avanzadas de gráficos_ se ejecuta en muchas plataformas
    - Mejora su funcionalidad constantemente


- Descargar software de R :     https://cran.rstudio.com
- Intalar el sowftware de desarrollo Rstudio: https://posit.co/download/rstudio-desktop/

## Relacion entre variables
Existen diversas técnicas para conocer la dependencia o independencia entre variables
### Entre variables categoricas esta el metodo chi-cuadrado

### Test Chi-cuadrado

- Permite saber si existe realación entre variables de tipo cualitativo
- Si al final del estudio concluimos que las variables no estan relacionadas pordemos decir con un determinado nivel de confianza, que ambas son independientes
- Ejemplo: relacion entre el sexo de una persona y su interes por el futbol
- Los resultados se suelen presentar como tablas de doble entrada que reciben el nombre de tablas de contingencia
- El vañpr esperado se calcula como el producto de los totales marginales dividido por el número de casos totales.

### ANOVA
- Permite sabes si existe realacion entre variables numericas y categoricas
- El analisis de varianza (ANOVA) es un metodo de igualdad de tre o mas medias poblacionales, por medio del anmnalisis de las varianzas muestrales
- Emplo: estamos interesados en averiguar si hay colores mas atractivos para los insectos. Para ello se  han deiseñado trampas con varios colores: amarillo, azul
blanco y verde. Se cuantificaba el numero de insectos que quedaban atrapados

- La hipoteisis es que todas las medias son iguales( las variables no están relacionadas)


### CORRELACIÓN

- Es la relación entre dos variables numéricas 
- La forma visual de saber si están relacionadas son los gráficos de dispersión
- Un valor alto de correlacion no nos asegura que la haya, depende tambien de la cantidad de datos.
- Podemos comprobar la correlacion con un a funcion de R que es cor.test() que es mas fiable, nos devolverá un valor p 
que al ifual que en los anteriores casos si es menor a 0.05 podemos asegurar con cierta fiabilidad que existe correlacion 
entre las variables.

Debemos recordar que la correlación no implica necesariamente causalidad.

Para visualizacion de datos tenemos librerias como esta libreria: https://plot.ly/r

## Machine Learning

- El **machine learning** es un conjunto de algoritmos capaces de identificar y aprender patrones en datos para realizar predicciones
- **Big Data** alamacenamiento y procesado de grandos volúmenes de datos.
- **Data Mining** o Mineria de datos: Extraer el valor de los datos
- **Inteligencia Artificial**: resolver problemas mediante máquinas, mejorando al ser humano
- **Deep Learning**: algoritmos que funcionan de forma similar al cerebro humano a través de redes neuronales

Un ejemplo de Machine learning seria entrenar a un algoritmo para que distinga los diferentes sonidos que emiten los animales,
y en base a ello, pueda clasificar a que animal corresponde cada sonido.

Usaremos machine learning cuando no se pueden obtener fácilmente las ecuaciones que resuelven nuestro problema.




## Ténicas de Machine Learning

- Aprendizaje supervisado: necesitan saber a que corresponde cada ejemplo, cada dato debe tener una etiqueta.
    - Clasificación:
    - Regresión: 
- Aprendizaje no supervisado: le pedimos al algoritmo que nos encuentre patrones o etiquetas para clasificar los datos
-Aplicaciones del ML:
    - Reconocimiento de imágenes
    - Filtros sw spam
    - Detección de fraude
    - Recomendaciones de productos
    - Diagnósticos médicos
    - Personalización web
    - Reconocimiento de voz
    - Optimizacion de precios 
    - Fugas y cross-selling
    - Segmentación de clientes
    - Demanda de energía
    - Etc

### Algoritmos de Machine Learning

- Regresion Lineal
-Regresion Logística
-árboles de decisión
-Random Forest
-XGBoost
-Redes Neuronales


Para desarrollar un modelo precisamos:
1. Entender y definir el problema
2. Recopilar datos
3. Preparar los datos ( Limpieza, valores atípicos, transformacionse)
4. Dividir los datos (entrenamiento, validación y test)
5. Entrenar uno o varios modelos
6. Medir el desempeño

#### Overfitting y Underfitting
A la hora de entrenar un modelo simpre surge un conflicyoentre generalización y Optimizacion
Optimizacion es el proceso de ajuste de un modelo para conseguir el mejor rendimiento posible de los datos de entrenamiento (proceso de aprendizaje).
Generalización es cómo de bien se comporta el modelo ante datos no procesados aún. El objetivo es conseguir la mejor capacidad de generalización
EL modelo comienza a estar sobre-ajustado o "overfitted" cuando ha aprendido tan bien los datos de entrenamiento, que memoriza pautas que son demasiado
especificas de los datos de entrenamiento e irrelevantes para los nuevos datos. Cuanto mas optimice con datos de entrenamiento, 
menos va a poder generalizar con modelos que no ha visto nunca

### Regresion Lineal

