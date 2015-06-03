![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

# Bitácora Clase de Metodos computacionales Vacacional

Nataly Castillo Ruiz

Código: 

***

## Primera clase  *27-Mayo-2015*

¡Hola mundo!,  aqui  estoy  comenzando el  curso de  **Métodos computacionales**

Herramientas del curso:

*( con _+_creo _listas,con ** ** )*

+ git,
+ Github,
+ c, 
+ bash, 

y los metodos a estudiar son:

1. interpolación
2. análisis de  fourier,  
3. linear algebra,
4. integración y diferenciación numerica, 
5. ecuaciones diferenciales ordinarias,
6. ecuaciones diferenciales parciales ,
7. Metodos de Monte Carlo,

**( Comando  *awk* )**

para imprimir la n-esimacolumna

+ awk '{print $n}' file, 
+ OR (||) & AND ()

**( Comando *sed* )**

reemplazar las congruencias *a* por *b* 

+ sed 's/a/b/g'

**(Como extraer  del  código fuente el tiempo)**

clock0
crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g'


+ while (true); do clear; crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g' | figlet; sleep 1 ; done


+ while (true); do clear; crul -s *url* | greep *palabraClave* | greep *PalabraClave2* | sed s's/ "twd">*//g' | sed s'/<\div>.*//g' | figlet; sleep *Numero_Segundos* ; done

**como  concterme  a un pc externo** 

ssh nombre d e usuario@direccion ip *( o una  variable que contenga la direccionip )* 
exit 

sftp  get *unbit* Trae el archivo  que  quiero  trasferir 

---

## Clase_2 - *(29 de marzo de 2015)*


[ Link repositorio talleres ](https://github.com/natalycr/Talleres.git)

[ Liknk de comandos para markdown] (https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

*( Imagen uniandes)*

![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

*(Parametros)*
'''
#!/bin/bash
echo $1, $2

'''


he podido hacer una  revision  de una version anterior en github (primer commit) 

+ git checkout (hash)

y para volver: 
+ *(git checkout master )*

##Clase_3 / 2 de junio

caracteres  y  rangos:

^
[^0-3]  rangos  inclusivos  

*EXPRECIONES REGULARES*

*(Si tengo algo en un formato que  no es csv hacer)*

copiamos y pegamos  el  texto desde  la pagina al editor  *tw* 

1. queremos borra todo lo que esta entre parentesis (exprecion regular *match*)
busqueda y remplaso vacio
\(.*
o
\(.+

-----

\(.*\)
**Nota Importante  para  el  archivo de  años**

si tengo :  en mas  de un  sitio 
(^\d{4}):
     año :

y  ahora decimos 

cámbielo a   (^\d{4}))\t 
				año tab
**_____________________________________**

sed -E 's/\(."\)//g' jove.txt

^*
para reemplazar los espacios 
*espacio* *
*espacio* + (para mas  de  un  espacio)

al renglon a  mano colocar

s/200 al  espacio lo cambiamos  por  un guion.

eliminal las lines  vacias
quiero reeplazar doble linea \n\n
por  linea  sencilla \n

**(Gnuplot)**
set term dum
plot x

instalar mac plots 
- set term dum
- plot x
- plot sin(x)
-  plot [0:2*pi] sin(x)
- *para una ventana*
set term aqua **No Funciona**

set term qt  *y ya*
set  title "Hola sin(x)"

* general *set __funcion_ valor *

set  ylable "y_soy bonita"

para  parametricas 

set parametric 
bla bla 

unset parametric 

**Superficies  3D Gnuplot**
splot x**2 * y**2

todo  esto puede  ser integrado  en  un  script 

para  gnuplot impot file 

set datafile separator ","

> plot "joviansatellites.csv" using 2:3
plot "joviansatellites.csv" using 2:3 with lines

definir funciones en gnuplot
quad(x) = x**2

gnuplot> set datafile separator ","
gnuplot> quad(x) = x**2
gnuplot> cube(x) = x**3
gnuplot> plot "joviansatellites.csv" using (cube($2)):(quad($3))

*Obligatorio en la Bitácora*
Todo **log** que salga con log  en el Handson

[link ara  expresiones regulares 1](http://persoal.citius.usc.es/tf.pena/ASR/Tema_2html/node22.html)
[link expresiones regulares 2] (http://www.geany.org/manual/gtk/glib/glib-regex-syntax.html)


1. search:  ^....  (hay un  espacio vacio al final)

"tsv tap separated values"

2. curl http://pi.karmona.com | sed -E 's/<B>//g' |sed -E 's/<BR>//g'| sed -E 's/<\B>//g'| sed -E 's/<\/B>//g' > 1oM_pi.csv

Falta  eliminar las letras 

[^\d+\.]

