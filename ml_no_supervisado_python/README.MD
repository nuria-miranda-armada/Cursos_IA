#ML no supervisado

- La diferencia entre "supervisado" y "no supervisao" es que no tenemos un
target especifico.

- Dentro de aprendizaje no supervisado existen varias técnicas ya que el campo 
no es tan "directo" como predecir un valor

- las tencicas mas famosas de aprendizaje no supervisado son "clusterizacion" y reduccion 
de dimensionalidad


## scikit-learn:

- Es una liibreria que establece un framework para crear flujos de la creación 
de algoritmos de ML
- Unifica un campo muy diverso y abstrae las dificultades de cada 
algoritmo distinto
- Muchas librerias nuevas como las librerias mas avazadas de temas de 
deep learning, aprovechan del framework y de los conceptos introducidos por
scikit-learn. 

- Para manejar datos utilizaremos las librerias ya vistas de pandas 
y numpy.

- Para crear graficos emplearemos tambien las librerias ya vsitas de matplotlib, seaborne 
o Plotnine.

-En la sintaxis de un modelo se sigue siempre el mismo patrón
        - my_model=SomeModel(...)
        - my_model.fit(X)
        - my_model.predict(X) o my_model.transform(X)


Los pasos a seguir serian:

- Declaramos el modelos, lo "entrenamos" y luego predecimos o transformamos 
segun el tipo de modelo
- Sintaxis simple vale para los distintos modelos
-Cada modelo tiene sus propios "hiperparámetros" y métodos especificos a la tencica
- El requisito previo es un X en condiciones


### Introducción a K-means

- La clusterización es un campo dentro del ML que busca agrupar los datos en unos 
"clusters" compuestos por datos similares.

-Se construyen los clusters o agrupaciones con un objetivo. El objetivo en este 
caso es aprender o entender los datos mejor dentro de cierto contexto

- K-means crea unos grupos centrados en la media de los datos que pertenecen al
grupo.

- Nosotros tenemos que elegir el numero de grupos que existen y el algoritmos busca
los centroides

- La implementación en sklearn es muy escalable y sigue el patrón típico de un modelo
de aprendizaje supervisado.

- Podemos evaluar como ha ido el entrenamiento, mirando el numero de iteraciones y la 
"inertia"(suma de distancias cuadradas a los centroides). La inertia cuando mas grande es 
la distancia comparada con los diferentes centroides, mejor

- Si queremos que vaya mas rapido el entrenamiento se pude reducir el numero máximos de 
iteraciones - pero subira la inertia(la calidad del "fit")


- Kmeans es un algoritmo muy robusto que depende de nuestra especificacion del numero de clusters

- El entrenamiento es sencillo y tenemos la opcion de "mini batch kmeans" para entrenar mas rapido

- Podemos predecir sobre puntos nuevis para agruparlos según los clusters encontrados en el
entrenamiento.


### Visualizar y evaluar resultados

- Para la evaluacion de los resultados es muy útil visuakizar los clusters que estamos contruyendo

- Nos permite entender de una forma sencilla(pero manual) si los retultados tienen sentido comun

- Es importante combinar la "predicción" del modelo con alguna librería de visualización.

- de sklearn se usa la libreria metrics para evaluar resiltados

- Algunos de los metodos mas conocidos para la evaluacion de resiltados son:
    - Silouhette score --> mide la distancia a otros clusters comparado con el cluster 
    del punto, cuanto mas cerca de 1 mejor, porque implica que estamos mas cerca a nuestrocluster
    y mas lejos de los otros clusters

    - Calinski Harbasz --> calcula el ratio de "dispersion" dentro del cluster con respecto 
    a la dispersion fuera del cluster donde l disperision es la suma de distancias

    -Davies bouldin

    ### Preparacion de datos

    - El requisito básico es que los datos deben de ser numéricos
    
    - Preferimos trabajas con variables continuas, las variables cartegóricas
    pueden producir resultados extraños

    -El pipeline de sklearn es una erramienta fundamental para mejorar el proceso
     de preapraracion
    
    - El "pipeline" es una manera felexible de crear "flujos" de diferentes pasos de 
    preparacion que luego podemos optimizar y ejecutar sobre nuevos datos.

    -El "Pipeline" es ima seroe de "pasos" con nombres y cada "paso" tiene un nombre,
    y cada paso es una operacion que vamos a hacer sobre los datos a la hora de ejecutar
    el pipeline
 
     - Al elegir las variables hay que tener en cuenta que kmeans es muy sensible a los
     datos, debemos taambien buscar variables con poca correlación entre ellas.
     - Generalmente las variables deben de ser continuas (sin muchos outliers)
     - En caso de que sea muy importante utilizar variables categórixas, existen
     adaptaciones a kmeans(kmodes,kprototype)

     - La normalizacion es un paso fundamental ya que kemans depende de distancias, entonces
     es fundamental que las variables esten en la misma escala.

     -Kmeans explota la distancia entre mpuntos y si las variables tienen dimensiones diferentes 
     las distancias no son comparables

     - Existen varias maneras de normalizar, pero es muy importante aprovechar los 
     pipelines para crear procesos mejores

     - El metodo StandardScaler(), coge por ejemplo una en la que tenemos rangos bastante
      distintos. Funciona como si fuera un tipo de modelo, primero lo declaramos y hacemos un 
      fit sobre nuestros datos, buscara los parametros y numeros para hacer el fit sobre el 
      standarscaler y si lo alamcenamos y lo tenemos contenido en un objeto podremos aplicarlo
      a unos datos nuevos, externos sin tener que tocarlos

     

con Kmeans tenemos que decicir cuantos grupos existen y se prefieren variables continuas ante
categñoricas. Pero existen otras tçécnicas de ML no superviasdo que veremos a continuacion


      ## DBSCAN
       - Algorutmo que busca zonas de alta densidad de puntos sin especificar cuantas "zonas " 
       tienen que existir
       - Los parámetros claves son los que definen los que es la "alta densidad"
       - Escalabilidad similar a kmeans
       - No agrupa "todos" los puntos



