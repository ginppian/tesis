Tesis
===

    1. Hardware
            1.1 Receptor GPS
            1.2 Servidor(VPS)
    2. Software
        2.1 Base Datos
        2.2 API Rest
        2.3 App Cliente
            2.3.1 Localización (Antena GPS, Triangulación Wifi)
            2.3.2 Algoritmo Haverseine
        2.4 App Manager
            2.4.1 Capa de Consumo Servicios Rest
            2.4.2 Mapas
            
Protocolo de investigación

1. Titulo
2. Resumen
3. Planteamiento del problema
4. Marco teóricom
5. Hipotesis
6. Objetivos
7. Metas
8. Metodología
9. Resultados
10. Análisis resultados
11. Discución resultados

## Introducción

Actualmente la difusión de la tecnología ubicua sobre todo la móvil se ha extendido ampliamente gracias al uso del internet y los telefonos inteligentes o smartphones,  así la disminución de costos de los mismos. Lo anterior nos da un ecosistema fertil para un desarrollar un sin fin de aplicativos.

Cabe especificar que los smartphones cuentan con diversos sensores integrados, como lo son: acelerómetros, giroscopio, sensor de huella, sensor dactilar, bluethoot, magnetómetro, receptor GPS, etc. Y es precismente este último el que nos interesa para nuestro desarrollo.

El receptor GPS se encarga de obtener la ubicación exacta con errores mínimos pudiendonos dar: la latitud, longitud y altitud del dispositivo. Apartir de éstos datos podemos obtener información diversa como: la velocidad de desplazamiento del dispositivo, la hora exacta del dispositivo en base a su posición, la distancia a un punto dado al dispositivo, si el dispositivo ha entrado a un área en especifica, si ha salido de un área en específica. 

Con este conocimiento y la violencia e inseguridad que actualmente sufre México, buscamos que la tecnología se vuelva una aliada en el rastreo de personas, especificamente enfrentar el problema de "feminicidios" en el estado de Puebla. 

Para que las familias y seres queridos de estas personas tengan en medida de lo posible, la tranquilidad de conocer su paradero y saber que se encuentra bien y a salvo.

## Objetivos

%¿Cuál es el problema y cómo contribuye a la solución?

### Generales

Desarrollar una aplicación ubicua que permita monitorear y rastrear personas del sexo femenino en el estado de Puebla.

### Especificos

Montar un servidor.
Montar Base Datos.
Instalar un API Rest con CRUD a la DB.
Conectar un dispositivo de rastreo al API Rest.
Desarrollar una capa de consumo de servicios REST.
Mostrar en tiempo real la última ubicación.
Mostrar un historial por fecha indicada de ubicación.
Notificación sale del perímetro.

## Planteamiento del problema



## Justificación

Busca la prevención para disminuir la desaparición, así como generar un cuerpo de base de datos que muestre las rutas más comunes y ayude en una futura investigación.

 Planteamiento del problema

¿Rastreador GPS en el monitoreo y rastreo de la  desaparición forzada de personas?

La desaparición de personas en México es una problematica social que se ha encrudeció en años recientes. El Registro Nacional de Datos de Personas Extraviadas o Desaparecidas, RNPED, integra los datos de personas NO localizadas en México, obtenidos a partir de las denuncias presentadas ante la autoridad ministerial correspondiente. Este registro incluye únicamente a las personas que, a la fecha de corte, permanecen sin localizar.

Nota: El cierre del conteo de datos por año se cierra el 30 de Abril.

En el 2017 alcanza su punto más alto en 10 años con 5477 personas desaparecidas, para en 2018 disminuir con 1653 personas desaparecidas.

Sumado la violencia que actualmente atraviesa el país.
Justificación
Buscamos la disminución de la desaparición forzada a través de la prevención mediante tecnología móvil. 

Aprovechando los bajos costos para adquirir un smartphone que actualmente cuentan con receptor GPS, así como para acceder a Internet a través de la red 3G.

De está manera se podrá auxiliar a la persona en base a su ubicación y si surge un siniestro se podrá actuar de manera rápida y con mayor efectividad. Esto es un complemento tecnológico para la prevención de la desaparición de personas, el cual no es una herramienta única sino que busca sumar esfuerzos para la prevención de este problema. 

## Marco Teórico

* Computo Ubicuo

* Aplicación móvil y sus clasificaciones

* GPS

## Estado del arte

* Ejemplos de apps similares

* Tipo Boton de pánico

* Tipo GPS físico para mascotas, niños y adultos mayores.

* Familiar

* Whatsapp y iCloud

## Hipotesis 

Problemas de las anteriores:

* No son precisas.

* No son gratis.

* Necesita usar el app en foreground en vez de comodidad del background.

* El problema de no quiero que vean mi ubicación siempre.


Propone un rastreo en conjunto dispositivo receptor GPS con smarthphone. El GPS siempre enviara la ubicación, el smarthphone controlara si es visible o no. Sino es visible por voluntad propia da la opción de agregar: geocercas, notificaciones. Si, no es visible por causas ajenas se notifica un estado de alerta en base a una escala de semaforo empezando por naranja hasta rojo, dónde se notifica a sus seres queridos, también tienen la opción de desbloquear el rastro de las ubicaciones para que puedan movilizarse.













