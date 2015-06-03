#! /bin/ bash

clear

echo " Planetas Extrasolares " | figlet 
echo "========================================================================"

echo "importando datos ... ..."
# Importa  los datos
curl https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv > header.csv 

# quita la primera linea
sed '1d' header.csv > planetas.csv

rm header.csv # elimina el archivo con la primera fila

 
# Punto (a)
echo "========================================================================"
echo "Número de planetas extrasolares en el catálogo: $(wc -l planetas.csv) "

#Punto (b)
echo "========================================================================"

#cat planetas.csv
#awk '{if($10< 0.01) {print $1}}' > planetas1_10.csv

awk -F"," '{if($2!="" && $2< 0.01) {print $1,$2}}' planetas.csv > planetas1_10.csv

echo "Número de planetas extrasolares con 1/100 la masa de Jupiter: $(wc -l planetas1_10.csv) "

#Punto (c)
echo "========================================================================"

awk -F"," '{print $6, $1}' planetas.csv > planetasSort1.csv

sort -n planetasSort1.csv > planetasSort2.csv

echo  "El planeta con menor  periodo  orbital "
echo ""
echo "PeriodoOrbital 	Planeta"
head -1 planetasSort2.csv 

echo ""

rm planetas.csv 
rm planetas1_10.csv
rm planetasSort1.csv
rm planetasSort2.csv