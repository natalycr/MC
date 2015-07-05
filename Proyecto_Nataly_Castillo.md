![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

# Proyecto Final Física  Computacional

## Transformación de interferogramas sintéticos a punto de vista del satelite RADARSAT-2 para el volcán Cerro Negro, frontera ColomboEcuatoriana

El presente proyecto busca transformar interferogramas sinteticos generados con el programa de MatLab usando los modelos de Mogi y Fialko.

### Introducción

####¿Que son las imagenes SAR?

Las imagenes SAR (imagenes de radar con apertura sintetica) Son generadas al iluminar el objetivo con con ondas electromagneticas con frecuencias de microondas y la señal reflejada nos permite saber propiedades del ojetivo.  En este caso se utilizan para determinar la distancia de la fuente y el objeto (lo cual nos da como resultado la topografia del volcán).

#### ¿cómo se ve una imagen SAR?

Debido a questas son tomadas desde aviones o satélites estas imagenes recien porcesadas sufren una serie de distorciones.

![alt text](http://www.radartutorial.eu/20.airborne/pic/SLAR-geometry_p.jpg)



####¿ Qué son y en qué consisten las imagenes In_SAR?

El Radar interferométrico de apertura sintética InSAR (Interferometric Synthetic aperture images) permite tomar dos imagenes SAR tomadas en diferentes tiempos desde una misma pocición y restarlas. Lo que se obtiene es un patron de diferencia entre los periodos de tiempo  y esto se interpreta como deformación en el contexto geologico de superficies.

![alt text](http://image.slidesharecdn.com/presentation-background-theory-150402114711-conversion-gate01/95/presentation-on-the-background-theory-of-insar-13-638.jpg?cb=1427993249)

Esa deformacion superpuesta a la topografia se ve así:

![alt text](https://volcanoes.usgs.gov/activity/methods/insar/images/ssis_InSAR_may2001.jpg)


###Objetivos

####Principal
Obtener los interferogramas  sintéticos desde la perspectiva del RADARSAT-2.

####Secundario
A través de las  herramenientas obtenidas en el curso de procesamiento de imagenes se busca poder generar la distorción original por el ángulo de mira (look angle)del satélite.
