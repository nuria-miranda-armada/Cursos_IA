# Cursos_IA - Web Scraping

Empezamos con el curso de Web Scraping, comprobamos que tenemos instalado anaconda en el equipo y python.
El curso comienza haciendo un repaso básico de programación en python. 

## Que és Web Scraping y Web Crawling:
Es la extracción de los datos significativos de una o varias paginas web determinadas para una manipulación o análisis posterior

Para poder realizar web scraping lo que hacemos es:

- localizar en el archivo html de la página la información que nos interesaría extraer.Examinando cuales son las etiquetas dentro de las cuales esa informacion está almacenada. 
- Una vez tengamosla información localizada información nos ayudaremos de las etiquetas y sus atributos para navegar por la página y sus elementos obteniendo la información que precisamos.
- En caso de haber elementos sobrantes como simbolos de puntuacion y etc, haremos una limpieza de la información o elementos sobrantes, nos podemos servir de métodos como replace()
- Finalmente cuando tengamos los datos en el formato que precisamos, podremos hacer las operaciones que precisemos sobre ellos.
- También podremos ornarlos en una tabla con el uso de la librería pandas para mejorar su visualización 
![Tabla para visualizar las palabras mas empleadas en un discurso](/images/salida_pantalla_extraccion_texto.png)

## Servicios Web y Apis

- Un **servicio web** es una tecnologia que utiliza un conjunto de protocolos y estándares web que sirven para intercambiar datos entre aplicaciones
- Diferentes aplicaciones de software, ejecutadas sobre cualquier plataforma y desarrolladas en lenguajes de programación diferentes, pueden utilizar los servicios web para intercambiar datos
- Existen dos principales formatos para el intercambio de datos:
    - XML("eXtensive Markup Language")
    - JSON("JavaScript Object Notation)

- **Serialización** : es un proceso de codificación de un objeto con el fin de transmitislo a través de una conexión en red. Por ejmplo: la transformación de un diccionario de python a un JSON.
- 