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

[^\d\.]

## Clase 4 / 3 Junio 

**Nota:** Para  que  no  se  vea  la carga de los archivos *curl -s* y para tab en en mi editor es literal el tab *-	-*

 
 *Clase  magistral!!*
 
 Grafica de tasa  de  cambio con  datos de  afuera
 
 Grafica de  dispersión agregando  regresiones lineales
 
 El archivo  tiene  fecha  dia y  tasa  de  cambio
 
 http://www.exchange-rates.org/history/COP/USD/T
 
 *Filtramos datos por  patrones*
 seleccional lineas  de  grep "Text ...." | grep  "USD cop rate for" 
 
 *seleccionar lo que  sea  digitos  "/" y numeros*
 
 sed 's/<.*>/ /g' (el espacio los diferencia)
 
 **remueve tags html**
 sed -E '<[^>]*>//g' 
 
 borrar todo lo que tenga letras
 
 sed -E 's/[a-zA-Z]//g'
 
 w3m (Comando que descarga como se  ve el html  y no el código)
 
 grep "USD COP rate for" | sed 's/COP.*//g' | sed -E 's/[a-zA-Z]//g' | sed 's/+/,//g' | sed 's/,s//g'
 
 gnuplot 
set data  file  separator ","

**Gnuplot dates**

plot 

set xdata time (Tipo de  datos en x)
set data time
set timefmt "&M/&D/&Y"
plot 'dolar.csv ' using $1:$2 with lines

**Tiempo del universo**
la  velocidad  a la que  nos  alejamos de las  galaxias es  directamente proporcional con la distancia a  la que estamos de ellas 
sed  data 

*fit into gnuplot* 

fit f(x) 'galaxy.csv' using $2:$3 via m,b ("via son los " )

st  datafile separator
plot "galaxys.csv" 

fit y(x) 'galaxys.csv' !!!!! Preguntar

plot bla 
replot m*x + b 
*una  linea  recta*

***NOTA!!!!**
en  scatter  plo.gp 

### Programando en C

la carpeta  esta  en el  repositorio de  ejemplos
ciclo 10000 en Bash
 
integers.c

(#include <stdio.h>

int main(){
	int i=1;
	int n;
	n=10000
	for (i=0; i<= n; i+++){
		printf(%f \t, i);
	}
	return 0, 
}

)
es importante  compilarlo *gcc* o *gcc -o integers.out integers.c* donde  el segundo permite que el archivo compilado tenga  el nombre que  quiero. 

starttime=$(date "+%$") mira  el tiempo 

./timer.sh "integers2.sh"

## Clase_5 /  5 de  Junio de  2015

Con base en  el archivo compartido para el taller 

queremos un ciclo 
* x  con distancia
* y
*z

después números  aleatorios  con  distribución normal 
(x,y,z)*(1/(x^2+y^2+Z^2)^(1/2))

ya existe el código esfera.c

.\a.out > dataesfera.csv


*codigo*

*Para plotear en 3D*
Gnuplot

set data  fiel
view equal 
set axis equal 1
set size ratio 1
splot ""

### Python!!!!!! 

Diapositivas de clase 
revisrala !! 

**NOTAS PARA LA TAREA HW2**

para el segundo usar clear
para el segundo el radio=cos^2(wt) sleep

puede ser  en gnuplot o bc -l (para que conosca funciones  especiales)
quit

funcion de bash que usando set cambien 2 letras 
300000 algo 

sed head tail tl 
para la tarea
 
==================================================================================
set parametric 
set trange [0:2*pi] 	# determina los valores de  t para la función paramétrica 
r="$1" 		# define el radio con el numero que entra  como parámetro
		# crea la función del circulo
set xlabel 'x' -2, 2
set ylabel 'y' -2, 2
set title 'Circle'
fx(t)= r*cos(t)
fy(t)= r*sin(t)
set size 2,2
plot fx(t), fy(t) 		#gráfica el círculo
==================================================================================

set  term dump 
r="$1" 		# define el radio con el numero que entra  como parámetro
set xrange [-2,2]
set yrange [-2,2]
set title 'Circle'
set xlabel 'x' -2, 2
set ylabel 'y' -2, 2
uno=x/$1
dos=y/$1
plot uno^2

#!/bin/bash 
fileout=$1 
gnuplot << EOF 
fileinp='mydata.dat' 
set terminal postscript 
set output "${fileout}.ps" 
plot fileinp u 1smilie$3<5 ? $2 : 1/0) 
EOF 


wc -l < log.txt | tr -d '\n'