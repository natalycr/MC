![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

# Bitácora Clase de Metodos computacionales Vacacional

Nataly Castillo Ruiz

Código: 201126924

***

##  Clase_1  *27-Mayo-2015*

¡Hola mundo!,  aqui  estoy  comenzando el  curso de  **Métodos computacionales**

Con los (_#_) digo el tipo de título. Mientras más (_#_) disminuye el rango del tipo de subtítulo.

#### Herramientas del curso:

 con (_+_ ) creo listas , con dobles (** ) genero negrilla


+ git
+ Github
+ c
+ bash

####Los metodos a estudiar son:

1. interpolación
2. análisis de  fourier,  
3. linear algebra,
4. integración y diferenciación numerica,
5. ecuaciones diferenciales ordinarias,
6. ecuaciones diferenciales parciales ,
7. Metodos de Monte Carlo,

### Comando -  *awk*

para imprimir la n-esimacolumna

+ awk '{print $n}' file,
+ OR ( _| |_ )  y AND (_&&_)

### Comando - *sed*

Reemplazar las congruencias *a* por *b*

+ sed 's/a/b/g'

**Como extraer  del  código fuente el tiempo**

```bash
clock0
crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g'


+ while (true); do clear; crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g' | figlet; sleep 1 ; done


+ while (true); do clear; crul -s *url* | greep *palabraClave* | greep *PalabraClave2* | sed s's/ "twd">*//g' | sed s'/<\div>.*//g' | figlet; sleep *Numero_Segundos* ; done
```

**Cómo  conectarme  a un pc externo**

```bash
ssh nombre de usuario@direccion ip *( o una  variable que contenga la dirección )*
exit

sftp  get *unbit*  #Trae el archivo  que  quiero  trasferir
```


## Clase_2 - *(29 de marzo de 2015)*

¿Cómo colocar links en markdown?

``` markdown
[ Link repositorio talleres ](https://github.com/natalycr/Talleres.git)

[Liknk de comandos para markdown ](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
```
[ Link repositorio talleres ](https://github.com/natalycr/Talleres.git)

 Imagen uniandes ¿Cómo colocar imagenes?

![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

```markdown
![alt text](http://www.uniandes.edu.co/templates/tmpl_uniandes/images/logo.png)

```
#### Parámetros

```bash
#!/bin/bash
echo $1, $2
```
*Nota:*

He podido hacer una  revision  de una version anterior en github (primer commit)

+ git checkout (hash)

y para volver:
+ *(git checkout master )*

##Clase_3   *(2 de junio)*

Caracteres  y  rangos:

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

```bash
sed -E 's/\(."\)//g' jove.txt

^*
```

para reemplazar los espacios
*espacio* *

*espacio* +  *para más  de  un  espacio*

al renglon a  mano colocar

s/200 al  espacio lo cambiamos  por  un guion.

eliminal las lines  vacias
quiero reeplazar doble linea \n\n
por  linea  sencilla \n

#### * Gnuplot

```bash
set term dum
plot x
```

Instalar mac plots

- set term dum
- plot x
- plot sin(x)
-  plot [0:2*pi] sin(x)
- *para una ventana*
set term aqua **No Funciona**

set term qt  *y ya*
set  title "Hola sin(x)"

* general *set __funcion_ valor*

```Bash

set  ylable "y_soy bonita"

para  parametricas

set parametric
bla bla

unset parametric
```

### Superficies  3D Gnuplot
```bash
splot x**2 * y**2
```

Todo  esto puede  ser integrado  en  un  script

para  gnuplot impot file

set datafile separator ","

> plot "joviansatellites.csv" using 2:3

> plot "joviansatellites.csv" using 2:3 with lines

definir funciones en gnuplot
quad(x) = x**2

gnuplot> set datafile separator ","
gnuplot> quad(x) = x**2
gnuplot> cube(x) = x**3
gnuplot> plot "joviansatellites.csv" using (cube($2)):(quad($3))

*Obligatorio en la Bitácora*

Todo **log** que salga con log  en el Handson

[link para expresiones regulares_1](http://persoal.citius.usc.es/tf.pena/ASR/Tema_2html/node22.html)

[link expresiones regulares_2](http://www.geany.org/manual/gtk/glib/glib-regex-syntax.html)


1. search:  ^....  (hay un  espacio vacio al final)

  "tsv tap separated values"

2. curl http://pi.karmona.com | sed -E 's/<B>//g' |sed -E 's/<BR>//g'| sed -E 's/<\B>//g'| sed -E 's/<\/B>//g' > 1oM_pi.csv

Falta  eliminar las letras

[^\d\.]

## Clase_4 *(3 de Junio)*

**Nota:** Para  que  no  se  vea  la carga de los archivos *curl -s* y para tab en en mi editor es literal el tab *-  -*


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

**Gnuplot data**

plot

set xdata time (Tipo de  datos en x)
set data time
set timefmt "&M/&D/&Y"
plot 'dolar.csv ' using $1:$2 with lines

**Tiempo del universo**

la  velocidad  a la que  nos  alejamos de las  galaxias es  directamente proporcional con la distancia a  la que estamos de ellas
sed  data

### - *fit into gnuplot*
```bash
fit f(x) 'galaxy.csv' using $2:$3 via m,b ("via son los " )

st  datafile separator
plot "galaxys.csv"

fit y(x) 'galaxys.csv' !!!!! Preguntar

plot bla
replot m*x + b #una  linea  recta
```

**NOTA!!!!**
en  scatter  plo.gp

### Programando en C

La carpeta  esta  en el  repositorio de  ejemplos
ciclo 10000 en Bash

integers.c
``` c
#include <stdio.h>

int main(){
	int i=1;
	int n;
	n=10000
	for (i=0; i<= n; i+++){
		printf(%f \t, i);
	}
	return 0,
}
```

es importante  compilarlo *gcc* o *gcc -o integers.out integers.c* donde  el segundo permite que el archivo compilado tenga  el nombre que  quiero.

starttime=$(date "+%$") mira  el tiempo

./timer.sh "integers2.sh"

## Clase_5  *(5 de  Junio de  2015)*

Con base en  el archivo compartido para el taller

queremos un ciclo
* x  con distancia
* y
* z

Después números  aleatorios  con  distribución normal

(x,y,z)  _*_  (1/(x^2+y^2+Z^2)^(1/2))

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
``` Bash

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
```
==================================================================================

set  term dump
r="$1" 		# define el radio con el numero que entra  como parámetro
```
set xrange [-2,2]
set yrange [-2,2]
set title 'Circle'
set xlabel 'x' -2, 2
set ylabel 'y' -2, 2
uno=x/$1
dos=y/$1
plot uno^2
```
``` Bash

#!/bin/bash
fileout=$1
gnuplot << EOF
fileinp='mydata.dat'
set terminal postscript
set output "${fileout}.ps"
plot fileinp u 1smilie$3<5 ? $2 : 1/0)
EOF
```

wc -l < log.txt | tr -d '\n'

*nota: faltan las notas de la semana del 6 al 13 por salida de campo. Gracias*

##Semana del 16
##Clase_7 *(16 de junia)*

Interpolación

si se tiene  más  derivadas se podría obtener  mejor precisión polinomio de mayor grado. Revisar ejemplos de la clase.

* lagrange
* polifit
* split (linear, cubic)

## Clase_8 *(miercoles 17 de Junio)*

 github

 ### Branch- Ramas

* se  crea  un repositorio  de prueva arbol  
* git  in
* echo  "primer  archivo" >> archivo1.txt
* git  add *
* *Primer*  git commit -m "primer  commit"
* git  log *Para  ver la historia de  todos los commits*
* *truco* git checkout con el  /o/
* git  status
**branch-Ramas**
* git branch
* git branch rama1
* git branch *Muestra las  ramas*
* git checkout rama1
*debe mostrar rama1  no master*
* git  add  rama1
* git  commit -m "solo rama1"
* git  checkout master
* ls
*ya no  muestra  el .txt de rama1*

**En Sours Tree** *tenemos  una  forma gráfica de hacerlo*

*En master*
* echo "archivomaestro" << archivomaster.txt *Esto era para ver como divergen entre ramas  en sourseTree*

Hacemos  otro  archivo en rama1
```Bash
git  branch rama1
echo "rama1 mas  grande" << masArchi.txt
git add masArchi.txt
git commit -m "Para ver crecer mi rama_segundo commit"
```
*Se pueden crear ramas dentro de ramas*

### merge

git checkout master
git merge ram1 *rama  que se  decea integrar*
*En teoria  ya esta en master*

despues de  modifciacar d e formas diferentes los archivos
el merge no se  puede  hacer  por lo que se busca
* cat archivomaestro.txt
y  muestra en el archivo las incongruencias

### *Git tag* Etiquetas
* git tag
muestra todas las etiquetas
*Para crear un tag* El  resto lo muestra el  vierne

### Análisis de Fourier
imágenes
y características

[handsOn 8-Lagrange
](http://localhost:8891/notebooks/Lagrange%20Io.ipynb)

*Nota!!!! wow*

```Python

a['x','y']
a += ['z']
print a
a = ['x','y','z']
```

## Clase_9 *(19 de Junio)*

###Transformada de  Fourier

Anteriormente  estabamos buscando ajustes. En el laboratorio de  busco llegar a una serie que se pareciera a  la onda  cuadrada atravez de  furier.

antes  el problema  era encontrar los coef para que se  pareciera a (la cuadrada)

f=Sum(an*plx)

Transformada discreta de FourierQuieres  partir de  una  imagen  y traducirla  en terminos  de  frecuencias.

se pasa de  tiempo a frec
y la ecuacion que  define a los  coef es:

Python  tiene  un  paquete que te permite  hacer  transformada y transformada  inversa de fourier.

NOTA:  es necesario  que  los  intervalos de t sean equidistantes.

Juan David usa  linspace

```Python  
# para hacer la función

N= # numero de  puntos
f=# frecuencia
t=np.linspace(0,1/f,N)

# revisar d
# teniendo la funcion anterior se  busca  hacer  la transformada para obtener las  frecuencias

```
Ejemplo de ruido en la  señal
*todo en el link*

para hacer  filtros de  frecuencias  altas
se  puede  con
transformada inversa(que es un  array )
```python
transinver[frecuencias(mias)>fmaxfrecuencia adquirida]=0
```

Tambien  se puede  hacer  transformadas  de  fourier  en imágenes . por  estas razon se  importa  la imagen  y  esta es  guardada m , por python como unn array. y  se  filtra por  frecuencias  nuevamente. Para poder  hacer  trasnformada de fourier toca la transformada en 2D.

[link de  la carpeta de dropbox clase](https://www.dropbox.com/s/oa7imdo9ec8ah97/05-Fourier.ipynb?dl=0)

[link handas on_9](http://localhost:8888/notebooks/Untitled.ipynb?kernel_name=python2)

## Clase_10

### Derivadas!!!

derivadas >
errores dependiendo del metodo usando

h; si se utiliza  diferencias  hacia adelante y  haceia atras
y es  h^2 para difrerencias  centrales

Como ver el valor  cuando la  funcion tiende  a  0
--- Se le  dan valores  se encuentra el polinomio y se  remplaza en 0

*Nota:* existe  sympy

[Hands_on 10](http://localhost:8888/notebooks/hands_on10.ipynb)

Nota: [Para la tarea HW4](http://www.astrobetter.com/blog/2010/03/03/fourier-transforms-of-images-in-python/)

##Clase_11 (24 de Junio)

### Integración numerica computacionale

asumimos  que  tenemos intervalos de integración y este  se  divide en intervalos equiespaciados. Partimos del  limite  inferios  al superior
aprox  rapesoidal (se  aproxima  a una linea recta (polinomio de  grado 1)) y se  integra el trapecio
(bm+bM)

(b-a)(f(a)+f(b)) (1/2)
* metodo de simson (polinomio de  grado 2)

como escala el error  para las integrales (simson  escala h^4)

Integracion Gausiana

Hands on_ 
