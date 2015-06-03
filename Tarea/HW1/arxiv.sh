#! /bin/ bash

clear

echo 'arXiv' | figlet -f starwars

echo '==============================='

# $1 significa el primer parámetro que  entra después del nombre de mi ejecutable. 

echo "searching the arXiv for the new search = $1"

echo "http://arxiv.org/find/all/1/all:+$1/0/1/0/all/0/1"

#http://arxiv.org/archive/astro-ph/new ojo cambiar

echo '==============================='

echo "Keyword: $1"

echo '==============================='


curl -s http://arxiv.org/find/all/1/all:+$1/0/1/0/all/0/1 | grep span | grep Title | awk '{$1=$2= ""}1' > articles.csv # url del que se esta sacando toda la información de los nombres de los artículos

echo "Related titles: $(wc -l articles.csv )"  # cuenta el numero de  artículos

echo '------------------------------------------------------------------------------'


echo "Articles found: " | figlet 
cat articles.csv # muestra  la lista de nombres  de cada  articulo

rm  articles.csv # borra  el archivo creado

echo "end"| figlet -f isometric2

# Nota como hacer  el mensaje  de error 



