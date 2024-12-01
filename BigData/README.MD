# Big Data

Big data se engloba dentro del ámbito de tratamiento de datos.
Porque el flujo del tratamiento de datos imoplica la reocleccion de infomacion, el almacenamiento de datos,
el procesamietno de datos (vamos a jugar con esos datos) y la visualización, mostraremos un resultado. El dispositivo mas sencillo que ilustra este proceso es la calculadora.

El tratamiento de datos es fundamental, se usa de manera constante como por ejemplo en el análisis de facturas.
Al aumentar los datos a tratar, tambien aumentan lso recursos necesarios para poder tratar esos datos.
El crecimiento vertical ( aumentar el tamaño del dispositivo/orneador) tiene limitaciones.
Aparece con el tiempo la computacion distribuida y el crecimiento horizontal, ahora a mayores necesidades,
mayor sera el numero de computadores utilizados

En la computacion distribuida se sigue un proceso que es como si partiéramos los datos y lso distribuyéramos en
diferentes maquinas, y en cada máquina habria almacenado un "trozo" diferente. Una vez que quiero realizar un analisis
de esos datos que estan repartidos, tengo que analizar cada conjunto de facturas por sepoarado, los resultados 
despues tendrán que se unificado para buscar una unica salida.
Al partir el dato, redistribuirlo y volver a unificarlo, a mas datos, mayores seran los tiempos necesarios para 
realizar este proceso, y aumentara el "cuello de botella"

Big Data tambien es computacion distribuida y almacenamiento distribuido
La clave de Big Data es la localizacion del dato, que basicamente consiste en que vamos a llevar el procesamiento
allá donde está e dato, el procesamiento se hace en la maquina que esta almacenado el dato ye l resultado tambien.

Las ventajas de Big Data se suelen resumir en 3 Vs:

- **Volumen**: El almacenamiento se hace en la propia maquina en si, a mas servidores mas almacenamiento vamos a tener,
en Big Datapodemos llevar a crecer sin limites, se empiezan a cver tamaños de TeraBytes, PetaBytes, Exabytes.
El numero de servidores va a ser casi ilimitado y por tanto tambien el almacenamiento. Big data es capaz de almacenar y 
procesar una cantidad ingente de datos.
- **Velocidad**: La limitacion anteriormente tambien estaba en el procesamiento, antes se procesaba por bloques lo  conocido
como batch processing. Cin Bug Data aparece el concepo de streamming, streamming significa procesar el dato en  "Real Time"
es decir procesarlo segun llega.
- **Variabilidad**: Big data puede procesar cualquier dato desde datos estructurados ( una tabla en base de datos que sabmeos el dato,
 lo camposy la estructurados),semi-structurado ( un documento json, del que conozco la estructura pero me puede varia el contenido),
desedctruturado,  como un tweet, una imagen. Todo elemento que genere datos es una fuente de datos para big data.

## Big Data y el Negocio

- Gracias a las ·vs de Big Data,los negocios pueden jugar con lso datos, con cualquier tipode  dato, en cualquier momento,
y con cualquier cantidad
- Se dice que a dia de hoy el dato es el nuevo oro  
- Comienza  a ponerse en relevancia el hecho de que cuando una plataforma es de uso gratuito lo pagas con tus datos, tu
privacidad "el producto eres tu"
- Big data no requiere únicamente de perfiles informáticos, llegan a aparecer nuevos perfiles no técnicos en torno a 
los datos. 
- Aparecen nuevos perfiles tecnicos como los de :
    - Analista de datos/Data scientist
    - Dearrollador / Data Engineer
    - Adminsitradir / Big Data Sysadmin

## Plataforma Big Data

- Un cluster es un conjunto de servidores que trabajan coordinados. Existen muchos tipos de cluster, según el producto
que lo conforme.
- En Big Data tendremos un cluster Hadoop.
- Los tipos de servidores de un cluster:
        - Maestros(Masters) -> coordinan el cluster
        - Trabajadores(Workers) -> alojan y procesan los datos
        - Ingesta(Gateway o EdeNodes) -> conexión del cluster con el exterior, son la puerta de enlace.
        - Utilidades (UtilityNodes) -> servicios adicionales, gestion de calves, servicio de seguridad, 
        base de datos relacional, monitorizacion, etc.
- Ampliar el número de Workers amplían el procesamiento y el almacenamiento del cluster.
- Big Data se monta sobre un cluser o plataforma de servidores, cada servidor va tener una finalidad u otra.
- Big Data no solo es Hadoop. Hay una serie de tecnologias relacionadas con el mundo big data que auqnue se puedan integrar
con Hadoop no son Hadoop.
- una plataforma Big Data engloba diferentes tecnologías y se puede considerar un conjunto de capas.
- Un cluster Haddop es el core de una plataforma big data. 
- Identificar las capas de un proyecto big data e identificar los componenetes que hay en cada una de las capas, nos va permitir
entender mejor el funcionamiento de la plataforma, de sus componentes e identificar que cosas son necesarias, y al llegar un 
componente nuevo podremos ubicarlo.
- Capas de una plataforma Big Data:
    - **Origenes de datos**: aqui tenemos todas las fuentes que van a ser susceptibles de generar datos para trabajar
    - **Ingesta**: componentes que nos van a servr para coger lso datos de la fuente y meter los datos en nuestra plataforma  
    - **Almacenamiento**: el datos debe ser almacenado de alguna manera, para extraer la informacion, o para almacenar un historico.
    - **Analítica/Procesamiento**: Esta capa permite transformar, extarer, refinar el dato, enriquecerlo etc...
    - **Explotación**: se peude extraer el grafico a traves de reportes, a traves de informes, o de gráficos.
    -**Administración**: la capa que va a dar soporte a todo, herramientas de gestion y coordinacion de todos los componentes sofware,
    Dentro de adminsitración tenemos la capa de seguridad, encriptacion y ocultacionde datos para garantizar la seguridad, controlar el 
    acceso.

## Hodoop: Core Tecnológico de Big Data
