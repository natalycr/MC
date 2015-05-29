# *(Bitácora Clase  de Metodos computacionales Vacacional)*

# Primera clase  *27-Mayo-2015*

¡Hola mundo!,  aqui  estoy  comenzando el  curso de  **Métodos computacionales**

Herramientas del curso:

*( con _+_creo _listas,con ** ** )*

+ git,
+ Github,
+ c, 
+ bash, 

y los metodos a estudiar son:
1. interpolación,
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

*(Como extraer  del  código fuente el tiempo)*

clock0
crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g'


+ while (true); do clear; crul -s *url* | greep *clock0* | greep *togglesimple* | sed s's/ *"twd">//g | sed s'/<\div>.*//g' | figlet; sleep 1 ; done


+ while (true); do clear; crul -s *url* | greep *palabraClave* | greep *PalabraClave2* | sed s's/ "twd">*//g' | sed s'/<\div>.*//g' | figlet; sleep *Numero_Segundos* ; done

**como  concterme  a un pc externo** 

ssh nombre d e usuario@direccion ip *( o una  variable que contenga la direccionip )* 
exit 

sftp  get *unbit* Trae el archivo  que  quiero  trasferir 


