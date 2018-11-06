Sistema de rastreo GPS para localización de personas.
=========

## Resumen

<p aligno="justify">
	El presente sistema brinda una herramienta preventiva para la localización de personas debido al aumento en las tazas de desaparecidos y en general la violencia que se vive actualmente en México.
</p>

El sistema se compone de una base de datos, un api de servicios rest, una aplicación móvil y un dispositivo GPS. Juntos interactuan para mantener un historial de la ubicación del usuario.

De esta manera logramos hallar en tiempo real a la persona así como, trazar una ruta actual, que incremente las posibilidades de llevarnos a su paradero, en caso de extravio.

## Introducción

### Motivación

#### Personas desaparecidas en México 2018

* La desaparición de personas en México es una problematica social que se ha encrudeció en años recientes. El Registro Nacional de Datos de Personas Extraviadas o Desaparecidas, RNPED, integra los datos de personas NO localizadas en México, obtenidos a partir de las denuncias presentadas ante la autoridad ministerial correspondiente. Este registro incluye únicamente a las personas que, a la fecha de corte, permanecen sin localizar.

Se entiende por persona desaparecida a toda aquella que, con base en información fidedigna de familiares, personas cercanas o vinculadas a ella, la hayan dado por desaparecida de conformidad con el derecho interno, lo cual puede estar relacionado con: un conflicto armado internacional o no internacional, una situación de violencia o disturbios de carácter interno, una catástrofe natural o cualquier situación que pudiera requerir la intervención de una autoridad pública competente.

El RNPED se divide en Fuero Comun y Fuero Federal.

En concreto, cuando se dice fuero federal se refiere a la correspondencia de aplicación de leyes federales, en un caso concreto a delitos cometidos en territorio que se considera federal o delitos que se encuentran tipificados en los ordenamientos federales como el Código Federal de Procedimientos Penales, como la Ley de Amparo, la Ley Agraria, etc.

Y cuando se hace referencia al fuero local, se hace referencia a la aplicación territorial de las leyes locales, de las entidades federativas, como el Código Penal del Distrito Federal, Código Civil del Distrito Federal.

<p align="center">
	<img src="imgs/fuerofederal.png" width="" height="">
</p>

<p align="center">
	<img src="imgs/fuerocomun.png" width="" height="">
</p>

Ambos fueros

<p align="center">
	<img src="imgs/fuerocomunYfuerofederal.png" width="" height="">
</p>

Como podemos observar en el 2017 alcanza su punto más alto en 10 años lo cual nos indica una situación preocupante. 

Nota: 

Aun que en 2018 se ve disminuido, estos datos se ven influenciados debido a que el RNPED realizo su fecha de corte el 30 de abril por motivos de delegar esta tarea a a la Comisión Nacional de Búsqueda de Personas como lo informan en su página:

<i>Se informa que el Secretariado Ejecutivo del Sistema Nacional de Seguridad Pública realizó por última ocasión la actualización de las bases de datos del Registro Nacional de Datos de Personas Extraviadas o Desaparecidas (RNPD) del fuero común y fuero federal con corte al 30 de abril.

Cabe mencionar que corresponderá a la Comisión Nacional de Búsqueda de Personas la publicación de las subsecuentes bases de datos, de conformidad con la Ley General en materia de Desaparición Forzada de Personas, Desaparición cometida por Particulares y del Sistema Nacional de Búsqueda de Personas, publicado en el Diario Oficial en noviembre de 2017.</i>

Los anteriores datos de personas desaparecidas en México realmente son alarmante por la exploción que se ha dado cómo podemos observar en la gráfica desde 2007.

### Aumento de la violencia en México

#### Homicidio en México 2018

Según datos del Instituto Nacional de Estadística y Geografía, INEGI, en la siguiente gráfica podemos observar los homicidios ocurridos en todo el territorio nacional desde el año de 1990 a 2017.

Podemos que en 2007 llega a su punto más bajo en más de 15 años con 8867 homocidios, apartir de ahí incrementa en más de un 50% respecto a 2007 llegando a su punto máximo en 2011 con 27213 homicidios (incrementando en más de un 300% en tan solo 4 años) apartir de ahí baja hasta 2014 con 20010 homicidios, volviendo a subir, para bater record en 2017 con 31174 homicidios, la cifra más alta en más de 25 años, un dato realmente alarmante y que preocupa a la sociedad en general.

<p align="center">
	<img src="imgs/homicidios.png" width="" height="">
</p>



#### Percepción Sobre Seguridad Pública 2018

Como su nombre lo indica el ENVIPE es la encuesta nacional sobre victimización y persepción sobre seguridad pública. 

Ofrece información referente al nivel de victimización y delincuencia, denuncia del delito, características de las víctimas de delito, los delitos y los daños causados, percepción sobre la inseguridad, desempeño institucional y la caracterización de los delitos en los hogares, entre otros.

Al mismo tiempo se da continuidad a la medición del grado de confianza social en las instituciones de seguridad pública y la percepción sobre su desempeño, los cambios en actividades y hábitos de las personas por temor al delito, la victimización del hogar y la victimización personal, así como a la identificación y medición de las actitudes y experiencias de las víctimas ante las instituciones de seguridad pública y de procuración de justicia.

La ENVIPE mide delitos que afectan de manera directa a las víctimas o a los hogares, tales como: Robo total de vehículo, Robo parcial de vehículo, Robo en casa habitación, Robo o asalto en calle o transporte público, Robo en forma distinta a las anteriores (como Carterismo, Allanamientos, Abigeato y Otros tipos de robo), Fraude, Extorsión, Amenazas verbales, Lesiones y Otros delitos distintos a los anteriores (como Secuestros, Delitos Sexuales y Otros delitos). 

Como podemos observar en 2017 el 29.74% de la población en México ha sido victima de algún tipo de los delitos de los ya mencionados, redondeando 3 personas de cada 10. Si la taza de violencia sigue aumentando así podriamos decir que promediando las tazas de años anteriores (0.821857143p) para 2021, 1 de cada 3 personas seran victimas de algun tipo de delito de los anteriores mencionados. Lo cual tambien es un dato preocupante.

<p align="center">
	<img src="imgs/envipe2010.png" width="" height="">
</p>

<p align="center">
	<img src="imgs/envipe.png" width="" height="">
</p>

#### Conclución

En conclución los indices de violencia y crimenes en México están en aumento, la tecnología juega un papel importante en buscar nuevas alternativas de brindar seguridad y estabilidad a la ciudadania.

Nos otros nos enfocaremos en el problema social de la desaparición de personas y como a través de una aplicación buscamos que se aminore.

Más estadisticas:

https://www.gob.mx/sesnsp/acciones-y-programas/registro-nacional-de-datos-de-personas-extraviadas-o-desaparecidas-rnped

### Objetivos Generales y Específicos del Proyecto

#### Objetivo General

* Desarrollar un sistema que permita rastrear a los usuarios a través de una aplicación móvil, que su ubicación pueda ser almacenada en la nube y consumida por personas autorizadas.

#### Objetivo Especifico

* Implementar algoritmo Haversine para calcular la distancia entre dos coordenadas

* Implementar un API REST que alimente y/o comunique la aplicación móvil con la base de datos.

* Implementar una aplicación que permita a terceros consultar la información de la persona rastreada.

## Capitulo 1. Definición de localización

La necesidad del ser humano para lograr realizar largos viajes y hubicarse en el espacio llevo a los primeros viajeros al estudio de la cartografía.

## Capitulo 2. Implementación en la sociedad (Justificación)

La implementación de un sistema de localización en tiempo real debido a la situación de crimenes que se viven en la actualidad respecto a personas, tales como feminicidios, secuestro o robos. 

Así como su acceso de manera libre y accesible a la población.

## Marco Teórico

#### Aplicación Móvil

##### Capa de aplicación

Para entender este concepto hay que definir que es una aplicación.

Podemos entender una aplicación como un programa informático que permite a un usuario relalizar diversos tipos de tareas de manera transparente con capas inferiores en un sistema operativo.

La capa de aplicación se encuentra en la parte superior sobre todas las demás capas de un sistema operativo, permitiendo al usuario realizar tareas sin necesidad de conocer el funcionamiento de capas inferiores.
	
Es decir, el hardware, la unidad central de procesamiento, CPU (central processing unit), la memoria y los dispositivos de E/S (entrada/salida), proporciona los recursos básicos de cómputo al sistema. Los programas de aplicación, como son los procesadores de texto, las hojas de cálculo, los compiladores y los exploradores web, definen las formas en que estos recursos se emplean para resolver los problemas informáticos de los usuarios. El sistema operativo controla y coordina el uso del hardware entre los diversos programas de aplicación por parte de los distintos usuarios.

@
<i>
Abraham Silberschatz, Peter Baer Galvin, Greg Gagne (2006). 
FUNDAMENTOS DE SISTEMAS OPERATIVOS, 7º EDICIÓN. [en linea]. 
Madrid: McGraw-Hill/Interamericana de España, S. A. U. 
Disponible en: https://rinapilar.files.wordpress.com/2014/02/fundamentos-de-sistemas-operativos-silbertchatz.pdf [2018, 23 de octubre].
Introducción, pag 3.
</i>

En la siguiente imágen podemos observar un abstracto de la arquitectura de UNIX (sistam operativo) y sus diferentes capas.

<p align="center">
	<img src="imgs/arquitecturaUnix.png" width="" height="">
</p>

<i>
El sistema operativo se denomina frecuentemente el núcleo del sistema, o simplemente núcleo, para destacar su aislamiento frente a los usuarios y a las aplicaciones. Esta porción de UNIX es lo que se conocerá como UNIX en este libro. Sin embargo, UNIX viene equipado con un conjunto de servicios de usuario e interfaces que se consideran parte del sistema. Estos se puede agrupar en el Shell, otro software de interfaz, y los componentes del compilador C (compilador, ensamblador, cargador). La capa externa está formada por las aplicaciones de usuario y la interfaz de usuario al compilador C.
</i>

@	
<i>
WILLIAM STALLINGS (1997). 
SISTEMAS OPERATIVOS ASPECTOS INTERNOS Y PRINCIPIOS DE DISEÑO, 5º EDICIÓN. [en linea]. 
Pearson Educación, S.A., Madrid.
Disponible en:  
[2018, 23 de octubre].
2.6 Sistemas Unix Tradicionales, pag92.
</i>

#### Computo ubicuo.

En 1991 Mark Weiser investigador en la Computer Science Laboratory en Xerox PARC publicaba un articulo llamado "La computadora para el siglo 21".

Para Weiser existen 3 etapas de la computación:

* La era de los Mainframes o estaciones de trabajo.

* La era del computador personal.

* La era del computo ubicuo.

El computo ubicuo según Weiser, constituye la tercera ola de la computación. Básicamente es un entorno tecnológico en donde dispositivos de diferentes tamaños y funcionalidades, pueden conectarse y usarse en conjunto para manejar información, de forma que el hombre opera con mayor facilidad sus actividades del mundo cotidiano. Es decir, usar la tecnología a un nivel tan profundo que desaparezca en nuestro entorno. La tecnología profunda se tejen en el tejido de la vida cotidiana, hasta que sea indistinguible.

La gente vive sus vidas. Por lo tanto, estamos tratando de concebir una nueva forma de pensar acerca de las computadoras en el mundo, una que tenga en cuenta el entorno humano natural y permita que las mismas computadoras se desvanezcan en el fondo del ecosistema. Tal mezcla es una consecuencia fundamental no de la tecnología, sino de la psicología humana. Cuando las personas aprenden algo lo suficientemente bien, dejan de ser conscientes de ello.

La máquina multimedia de hoy, demanda la atención de la pantalla del ordenador, convirtiéndola en un foco de atención en lugar de permitir que se desvanezca en el fondo.

El sentido opuesto del computo ubicuo sería "realidad virtual" debido a que la realidad virtual se centra en un enorme aparato para simular el mundo, en lugar de mejorar de manera invisible el mundo, que ya existe.

Para explicar mejor el concepto de: "se desvance en el medio", podemos utiliza el ejemplo de "motores eléctricos dentro de un carro", están ahí al limpiar el parabrisas, al bloquear o desbloquear las puertas, pero no nos preocupamos de dónde están, sino que interactuamos de manera natural para realizar todas estas acciones. De esta manera el computo ubicuo busca que las computadoras sean invisibles.

Cientos de computadoras en una habitación suena intimidante, pero vendrán a ser invisibles a la conciencia común. La gente simplemente los usará inconscientemente para realizar tareas cotidianas.
El verdadero poder del concepto emerge de la interacción entre todos los dispositivos.

Hay más información disponible a nuestro alcance durante un paseo por el bosque que en cualquier sistema informático, sin embargo, la gente encuentra Un paseo entre árboles relajante y computadoras frustrantes. Máquinas que se adaptan al entorno humano, en lugar de obligar a los humanos a entrar en los suyos, hará que usar una computadora sea tan refrescante como pasear por el bosque.

#### Movilidad informática.

Basado los conceptos anteriores podemos deducir que la "movilidad" es la segunda era de la computación la era del "computador personal". Dónde a diferencia de los Mainframes o grandes estaciones de trabajo tenemos acceso a computadores portatiles o movibles que podemos llevar de un lado a otro y no necesariamente están fijas en un lugar como los Mainframes en la primera etapa.

La computación móvil admite: computadoras portátiles, teléfonos celulares, los cuadernos de notas computarizados, las calculadoras de bolsillo, etc. Sistema de computación en donde el usuario puede estar en movimiento. Esto consiste en fabricar computadoras suficientemente pequeñas para ser fácilmente transportadas.

En cuanto a la comunicación que las computadoras portables tienen con otros dispositivos/computadoras, el modelo de comunicación más difundido, es el modelo cliente-servidor. Mayormente usado en nuestras redes de area local e Internet.

La arquitectura cliente-servidor es un modelo de diseño de software en el que las tareas se reparten entre los proveedores de recursos o servicios, llamados servidores, y los demandantes, llamados clientes. Un cliente realiza peticiones a el servidor, quien le da respuesta.

Por lo tanto podemos decir que "la movilidad infomática" es todo dispositivo de computo portable que interactúan con información centralizada (servidor) mientas los usuarios se encuentran en diferentes ubicaciones.
	
https://es.slideshare.net/briangamarra/computacion-movil-y-ubicua-41951544?next_slideshow=1
Weiser, M. (1991). The Computer for the Twenty-First Century. Scientific American, 265, 94-110.
Mark Wiser (September 1991). The Computer for the 21st Century. [en linea] Scientific American [26 Octubre 2018]

https://es.slideshare.net/briangamarra/computacion-movil-y-ubicua-41951544?next_slideshow=1

<i>Weiser, M. (1991). The Computer for the Twenty-First Century. Scientific American, 265, 94-110. 

#### Aplicación Móvil

#### Clasificación de las aplicaciones móviles




## Fuentes


* <a href="https://www.genbetadev.com/cnet/como-calcular-la-distancia-entre-dos-puntos-geograficos-en-c-formula-de-haversine">Ejemplo Haversine 1</a><br>




























