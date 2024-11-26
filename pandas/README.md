# Pandas

Pandas es una de las librerias mas usadas en el mundo del Data Science y 
del Machine Learning.

En este curso conoceremos los tipos de datos en pandas, manejaremos y manipularemos
series de datos, conoceremos en profundidad los dataframes y aprenderemos a crear
una estadística descriptiva con pandas.

### Preparación de entorno en Anaconda
- Usaremos python,numpy, pandas y jupyterlab 

- Para iniciar el curso de pandas prepararemos el entorno, via consola,
primero comprobamos la lista de entornos:

- conda list env

después crearemos un nuevo entorno y le indicamos el nombre 
y la version de python a usar

- conda create --name datasicence_openwebinars python 3.12

intalaremos librerias para trabajar con jupyterlab, numpy y pandas.

conda install -c conda-forge jupyterlab
conda install -c conda-forge numpy
conda install -c conda-forge pandas

En esta lección casi todo el contenido es práctico.

Como en lecciones anteriores usaremos jupyter Notebook dentro del entorno de Anaconda.
Para comenzar a trabajar deberemos de importar pandas y numpy.


- Estructuras de datos dentro de pandas:
    - Series: es una matriz unidimentsional. La princiopal diferencia entre un array y una serie es que la serie posee un índice. El indice es numerico, se inicia en 0 por defecto, y es autoincrementado.
    Los indices de la serie pueden ser "personalizados", es decir puedo establecer que en lugar de numeros sean letras ['a','b','c']. Tambien puedo crear series a partir de diccionarios, y existe la posibilidad de establecer 
    un índice distinto. 
    Podemos usar metodos de numpy en pandas aplicados a series.
    
    - DataFrames: son el objeto mas usado de pandas. Los DataFrame son una estructura de datos bidimensional que admite columnas de diferentes tipos. Estan formados por filas y columnas. 
    Su estreuctura puede ser considerada similar a una tabla sql.

    En este curso lo que más utilizaremos serán dataframs, manejaremos tanto lectura como escritura, consultas de datos, modificaciones de datos, como filtrar cuando renemos "datos missing" y etc.

    Este curso será mayormente práctico al igual que con numpy.
    
    Podremos leer archivos de csv con metodos como pd.read_csv()

    ![Lectura archivo csv](/imagenes/pd.read_csv.png")
    metodos como el data.head(2) nos permitiran obtener los primeros elementos de un archivo cvs 
    





