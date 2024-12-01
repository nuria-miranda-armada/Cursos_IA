# ML no supervisado

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


   ### DBSCAN
   Si tenemos una masa de puntos que hay que buscar el algoritmo va a buscar donde
   estan los puntos mas densos y si cumple con los requisitos de densidad, va a decidir que ahi 
   hay un cluster,no hace falta especificar el numero de clusteres que hay.
   - Algoritmo que busca zonas de alta densidad de puntos sin especificar cuantas "zonas " 
    tienen que existir
   - Definimos las zonas de alta densidad con el numero minimo de puntos y la distancia maxima de los puntos
   - Escalabilidad similar a kmeans, las restriccion anicel datos son similares a Kmeans.
   - No agrupa "todos" los puntos, a veces hay puntos que no pertenecen a ningun grupo, poerque no cumplen con ningun requisito,
   el algoritmo es capaz de identificar los puntos que no pertenecen a ninigun grupo 
   - Dtos a tener en cuenta: no tiene una metologia de metodos fit y predict separados, es el metodo
   fit_predict(X)

   ### Clusterización jerárquica

- Es un tipo de clusterizacion que va dividendo de forma progresiva los datos en grupos
- La implementación en sklearn unifica parejas de datos, formando grupos de "abajo/arriba"
   (agglomerative vs divisive)
- Muy fáciles de visualizar e interpretar gracias al famoso "dendogram" y su estructura de árbol
- Ahora tenemos diferentes consideraciones para los datos
- Dtos a tener en cuenta: no tiene una metologia de metodos fit y predict separados, es el metodo
   fit_predict(X)
- Hay alguna tecnica que se utiliza en la que se corta el dendoframa y simplemente se pinta la parte en la que 
   vemos la distancia de los clusteres. Porque realmente si queremos unos clusters con una similitud determinada, 
   sabemos que a mas similitud mayor proximidad de clusteres
- De las ventajas mas importantes es que podemos aprovechar mejor diferentes tipos de datos especialmente 
   las categórixas
   
   ## Casos de uso de clusterización
- Uno de los usos principales de la clusterización es la detección de grupos de interés
- Em pezamos construyendo clusters con las variables de interes u hacemos un análisis a posterior
  para enternder los comportamientos que captamos
- Podemos incorporar estos grupos en procesos de negocio
- Si somos capaces de detectar grupos de interes, grupos de comportamientos comunes, podemos usar
  estros resultados en modelso supervisados, en modelos predictivos
- Esto es muy útil si los datos tienen muchas dimensiones y si queremos facilitar la interpretación
      de los resultados. 

   ## Reducción de simensiones:

   
    - Queremos reducir las dimensiones porque la alta dimensionalidad puede ser problemática por 
      varios motivos:
    - Es dificil extraer conocimiento concreto
    - Los modelos supervisados que son entrenados con muchas dimensiones son
     propensos a tenr overfitting.
    - La significancia de los resultados se reduce porque hay que compersar.
    - Los algoritmos son mas lentos en converger. 

      
### PCA 
     
- El análisis de componentes principales o PCA es el algoritmo más clásico y busca expresar el conjunto
   de datos en una serie de vectores (componentes) que representan la gran mayoría de la varianza 
   que existen. 
- Por ejemplo en vez de dibujar nuestro gráfico en 10 dimensiones vamos a ver si lo podemos dibujar en dos.
   Estas dos dimensiones serian "inventadas" no pertenecen a las dimensiones originales y representan un poco mejor la
   varianza que hay.
- De esta forma es como resumir los datos y al mismo tiempo reducir el ruido. Podremos visualizar 
   estos resultados de forma facil o usarlo en otro analisis
- El PCA se utiliza de manera similar a los algoritmos anteriores.
- Sklearn nos proporciona varias maneras de evaluar el restultado y otra vez explota los métodos de
   "fit" y "trasnsform"

### T-SNE

- PCA aunque es muy popular no es perfecto. Sus debilidades tienen que ver como realmente captura las 
   diferentes estructuras de los datos y como luego los expresa.
- Los aloritmos t-SNE y UMAP son alternativas más anazadas a PCA y tambien bastante populares. Ambos
  son técnicas que realmente son técnicas visuales, los que hacen mejor que PCA es que consiguen resumir
  las diferentes geometrías de los datos de forma un poco mejor.
- Se suele recomendar aplicar un PCA(puede ser de mas dimensiones de lo normal) antes de aplicar t-SNE 
  UMAP para que puedan converger ( para que se puedan ejecutar bien).
- Debido a la complejoidad, tenemos mas opciones a la hota de entrenar pero el resultado se puede 
  utilizar de la misma forma.

## Casos de uso de reduccion de dimensiones
- Al igual que en la clusterización, podemos aprovechar la reducción de dimensiones para identificar grupos 
   de interés
- A nivel alto hemos visto que podemos visualizar los datos y podemos observando los grupso de puntos ver 
    que tienen algo en comun.
- Lo mas interisante quiza sea que podemso aprovechar los algoritmos de clusterización mara mejorar los resultados
- Podemos incorporar los resultados en otros modelos
- Podemos utilizar las dimensiones reducidas directamente en un modelo supervisado.
- En esencia, optamos por utilizar los componentes principales en vez de todas las variables disponibles.
- Ligeramente diferente a utilizar clusteres ya que no recogemos información de similaridad entre grupos.
- En los clusteres ya asumimos e interpretamos que hay cierto sentido en los grupos, sin embargo en este 
    caso es mas bien una representacion distinta de los datos.



