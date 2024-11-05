# Cursos_IA - Web Scraping

Empezamos con el curso de Web Scraping, comprobamos que tenemos instalado anaconda en el equipo y python.
El curso comienza haciendo un repaso básico de programación en python. 

## Que és Web Scraping y Web Crawling:
Es la extracción de los datos significativos de una o varias paginas web determinadas para una manipulación o análisis posterior.
El **web scraping** consiste en la extracción de datos específicos de una página web (por ejemplo: contenido, tablas, imágenes, etc.),en cambio el **web crawling** 
se centra específicamente en obtener los enlaces o URLs de múltiples páginas dentro de un sitio web para navegar y recopilar información general del sitio.

Para poder realizar web scraping lo que hacemos es:

- localizar en el archivo html de la página la información que nos interesaría extraer.Examinando cuales son las etiquetas dentro de las cuales esa informacion está almacenada. 
- Una vez tengamosla información localizada información nos ayudaremos de las etiquetas y sus atributos para navegar por la página y sus elementos obteniendo la información que precisamos.
![Examinacion de html y busqueda de etiquetas](WebScraping/images/localizacion_etiquetas.png)
- En caso de haber elementos sobrantes como simbolos de puntuacion y etc, haremos una limpieza de la información o elementos sobrantes, nos podemos servir de métodos como replace()
- Finalmente cuando tengamos los datos en el formato que precisamos, podremos hacer las operaciones que precisemos sobre ellos.
![](/images/img3.png)
- También podremos ornarlos en una tabla con el uso de la librería pandas para mejorar su visualización 
![Tabla para visualizar las palabras mas empleadas en un discurso](/images/salida_pantalla_extraccion_texto.png)

## Servicios Web y Apis

- Un **servicio web** es una tecnologia que utiliza un conjunto de protocolos y estándares web que sirven para intercambiar datos entre aplicaciones
- Diferentes aplicaciones de software, ejecutadas sobre cualquier plataforma y desarrolladas en lenguajes de programación diferentes, pueden utilizar los servicios web para intercambiar datos
- Existen dos principales **formatos para el intercambio de datos**:
    - **XML**("eXtensive Markup Language"), basado en eetiquetas, tiene un aspecto similar a HTML pero más estructurado,es más autodescriptivo, cobra ventaja en algunas aplicaciones como por
    -  ejemplo en procesadores de texto
    - **JSON**("JavaScript Object Notation), suele ser el mas usado para servicios wev debido a su simplicidad y similitud con las estructuras de datos nativas de los lenguajes de programación.
    El parsing es más directo y simple que en XML.

    Exiten páginas como www.codebeautify.org que ayudan a validar estos formatos, transformar de uno a otro y mostrar los datos en forma de estructura de arbol.

- **Serialización** : es un proceso de codificación de un objeto con el fin de transmitislo a través de una conexión en red. Por ejmplo: la transformación de un diccionario de python a un JSON.


  
### Interfaces de programacion de aplicaciones(APIs)
- Una API es un cojunto de reglas que establecen como utilizar en este caso, un servicio web.
- Cuando utilizamos una Api,  un programa crea un conjunto de servicios disponibles para que los usen otras aplicaciones y publica las APIs("reglas") que deben seguirse
   para acceder a los servicios proporcionados por el programa, permitiendo que las aplicaciones se conecten, se comuniquen y compartan información.
- Cuando los programas acceden a servicios proporcionados por otros se utiliza un planteamiento llamado Arquitectura Orientada a Servicios o SOA.
- Un planteamiento SOA es aquel en el que una plicación principal usa los servicios de otras aplicaciones.
- Un ejemplo de esto es la reserva de un viaje, cuando una web oferta servicios de reserva de aviones, hoteles y coches de alquiler.
- Las APIs de servicios web permiten el intercambio de información entre un servicio web y una aplicación.
 
 ### Tipos de Servicios web 
- SOAP (Simple Access Protocol): permite la transimisión de datos en formato XML
- REST (Representational State Transfer): es un tipo de arquitectura que se apoya en HTTP. Permite transmitir más tipos de datos(XML,JSON,Texto, etc), es más flexible y eficiente.

#### API REST
 - La mayotia de las empresas utilizan API REST para crear servicios web. Funcionan de manera similar a  una web.
 - Las operaciones que permiten obtener datos en HTTP son **GET** y **POST**-
 - **GET** nos permite obtener informacion del servidor. Esto puede realixarse a través de un navegador
 - **POST** nos permite enviar informacion desde el cliente para que sea procesada y actualice o agregue información en el servidos(ej: enviar un formulario).No se puede realizar con un navegador
 - Algunas herramientas permiten realizar peticiones HTTP y probar cualquier API REST, como por ejemplo _Postman_

### Seguridad y uso de APIs
  - Muchas veces se necesita una API key para hacer uso de APIs comerciales, esto permite saber quien y como usa los servicios.
  - Pueden existir distintos niveles de servicios( gratuitos y de pago) o politicas que limitan el numero de peticiones que un usuario puede realizar durante un periodo de tiempo determinado.
  - Metodos de autenticacion en API REST:
  - - API key: cadena larga de caracteres que se asigna a un consumidor de una API cuyo valor es unico y es utilizada por parte de ese cinsumidor en cada una de las solicirudes a la API
  - - Open Authorization(OAuth) protocolo que permite la autorizacion segura de una API de odo estándar y simple, basada en el uso de un _token_ de acceso (access token)  
   
  
   

  
