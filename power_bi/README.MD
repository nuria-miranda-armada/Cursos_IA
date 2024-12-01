### Power BI

- Es una herramienta que nos proporciona la facilidad de englobar englobar y tratar datos que tengamos almacenados
en la organizacion y finalmente crear informes que nos sean de ayuda a la hora de encontrar respuestas y soluciones
a los problemas que podamos tener diariamente en nuestras compañías.


- El origen de los datos que queremos filtrar pueden ser diferentes fuentes, puede haber múltiples datasource.

- En el caso de powe Bi en los primeros ejecicios lo que haremos sera cargar empleando SQL server, y esto tras establecer
la conexion con el server y la base de datos, empleando el metodo import que pasa una copia de nuestra BD a Power BI, podemos seleccionar las tablas exactar que queremos cargar.

![Imagencarga BD](/imagenes/carga_bd.png)


Tambien podremos cargar datos de archivoss csv, de paginas web y de otras fuentes de datos

### Power Query Editor

- Es como una especie de módulo dentro de power Bi que lo podremos abrir en algunos casos en concreto como
     - cuando cargamos nuevos datos
     - cuando queremos editar consultas existentes 
     - cuando queremos crear nuevas consultas

### Proyecto final 
Para elaborar el proyecto final haremos la conexion xon el sql server, y seleccionaremos import query,
es la opcion de importación que volvará una copia de todos los datos a Power BI y nos permitirá 
operar sin restricciones porque los datos estarán dentro de Power BI.
![tablas](/imagenes/sales_loas.png)

![tablas cargadas](/imagenes/tables_loaded.png)

También haremos una limpieza de datps, eliminando los que no necesitamos, lo haremos con edit query.    
![Borrado columnas](/imagenes/remove_columns.png)

Comprobamos las relaciones entre tablas:
![Relacion entre tablas](/imagenes/relaciones_tablas.png)

Ahora crearemos un calendar pero para ello usaremos la  variable OrderDate de la tabla SalesOrderHeader,
ya que esto nos permitirá que la variable minima y la varible maxima sean dinamicas y se vayan actualizando 
segun los rgistros de la tabla

![Calendar](/imagenes/calendar_creation.png)

Tras crear la tabla Calendario la enlazaremos con la tabla SalesOrderHeader por la variable OrderDate:

![relacion tablas](/imagenes/new_relationship.png)
![comprobacion relacion tablas](/imagenes/comprobacion_relationship.png)

Crearemos la columna Sales y la columna UnitCost

Todas las columnas se crean siguiendo el mismo procedimiento
- Creacion de la columna Sales:
![comprobacion relacion tablas](/imagenes/creacion_sales.png)


Una vez creadas las preguntas podremos crear nuestro diseño de dashboard.
Nos ayudaremos de los filtros para mostrar los datos que nos interesan.

![aplicamos filtro](/imagenes/aplicamos_filtro.png)
![caplicamos filtro](/imagenes/aplicamos_filtro2.png)
![mostramos dashboard](/imagenes/dashboard.png)