#! /bin/ bash

clear

# importa  los datos
curl https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv > header.csv 

# quita la primera linea
sed '1d' header.csv > planetas.csv

rm header.csv # elimina el archivo con la primera fila

 
# Punto (a)

echo "Número de planetas extrasolares en el catálogo: $(wc -l planetas.csv) "

#Punto (b)

declare massJupiter = 1.899 # por 10 ^27 Kg OJO con las unidades!!!!

planetas.csv > awk '{if($10< 0.01) {print $1}' > planetas1_10.csv

echo "Número de planetas extrasolares con 1/10 la masa de Jupiter: $(wc -l planetas1_10.csv) "

