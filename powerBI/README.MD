### Power BI

- Es una herramienta que nos proporciona la facilidad de englobar englobar y tratar datos que tengamos almacenados
en la organizacion y finalmente crear informes que nos sean de ayuda a la hora de encontrar respuestas y soluciones
a los problemas que podamos tener diariamente en nuestras compañías.


- El origen de los datos que queremos filtrar pueden ser diferentes fuentes, puede haber múltiples datasource.

- En el caso de powe Bi en los primeros ejecicios lo que haremos sera cargar empleando SQL server, y esto tras establecer
la conexion con el server y la base de datos, empleando el metodo import que pasa una copia de nuestra BD a Power BI, podemos seleccionar las tablas exactar que queremos cargar.

![Imagencarga BD](imagenes/carga_bd.png)


Tambien podremos cargar datos de archivoss csv, de paginas web y de otras fuentes de datos

### Power Query Editor

- Es como una especie de módulo dentro de power Bi que lo podremos abrir en algunos casos en concreto como
     - cuando cargamos nuevos datos
     - cuando queremos editar consultas existentes 
     - cuando queremos crear nuevas consultas

### Proyecto final 
Para elaborar el proyecto final haremos la conexion con el sql server, y seleccionaremos import query,
es la opcion de importación que volvará una copia de todos los datos a Power BI y nos permitirá 
operar sin restricciones porque los datos estarán dentro de Power BI.

![tablas](imagenes/sales_loas.png)

![tablas cargadas](imagenes/tables_loaded.png)

También haremos una limpieza de datps, eliminando los que no necesitamos, lo haremos con edit query. 
Eliminaremos las columnas que no vamso a utilizar. En caso de duda podemos dejar la columna y eliminarla
mas adelante, el metodo de edit query lo permite. 

![Borrado columnas](imagenes/remove_columns.png)

Comprobamos las relaciones entre tablas (esta es la relacion que ya viene definida por la BD):
![Relacion entre tablas](imagenes/relaciones_tablas.png)

Ahora crearemos un calendar pero para ello usaremos la  variable OrderDate de la tabla SalesOrderHeader,
ya que esto nos permitirá que la variable minima y la varible maxima sean dinamicas y se vayan actualizando 
segun los rgistros de la tabla

![Calendar](imagenes/calendar_creation.png)


Tras crear la tabla Calendario la enlazaremos con la tabla SalesOrderHeader por la variable OrderDate:

![relacion tablas](imagenes/new_relationship.png)
![comprobacion relacion tablas](imagenes/comprobacion_relationship.png)

Crearemos la columna Sales y la columna UnitCost, tambien crearemos la columna Sales Cost.

Todas las columnas se crean siguiendo el mismo procedimiento

- Creacion de la columna Sales:
![comprobacion relacion tablas](imagenes/creacion_sales.png)

- Comprobación de la creación de las columnas
![columnas creadas](imagenes/imagenes/columnas_creadas.png)

Una vez creadas las columnas podremos crear nuestro diseño de dashboard.

Nos ayudaremos de los filtros para mostrar los datos que nos interesan, como por ejemplo los datos por paises,
por continentes y etc. 
Filtraremos los datos que queremos mostrar, y la relacion entre ellos a nivel visualizacion( porque al marcar
segun que casillas visuales visualizo unis datos u otros) viene determinada por las relaciones entre tablas.

![aplicamos filtro](imagenes/aplicamos_filtro.png)
![caplicamos filtro](imagenes/aplicamos_filtro2.png)
![mostramos dashboard](imagenes/dashboard.png)

Finalmente le daremos a Publish y podremos publicar nuestro dashboard en Power BI Service, 
lo que nos permitirá llevar controles sobre metricas sobre quien visita la pagina, cuantas visitas tiene y etc

### Enlace al dashboard de powerBI: 
https://app.powerbi.com/view?r=eyJrIjoiYzRhN2JlNWUtMjMxYi00MTM2LWE2MjUtMjUwNTA2OWM3YTI4IiwidCI6ImE4ZTM1YzU4LWUzNGEtNDA0Mi1hYmZhLTBhOTMzYzA0YWZmNSJ9
