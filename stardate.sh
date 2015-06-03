#! /bin/ bash

clear

echo "############################################################"

echo '			StarDate' | figlet 

echo "############################################################"

echo "	$1"| figlet

# importa los  datos históricos por año e imprime los eventos  remplazando los números por tabs 
curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv | grep -w $1 | sed "s/$1//g" 

echo ""
echo "############################################################"

echo "LOOK  AT THE FOLLOWING STARS:"
echo "RA/º 	DEC/º	HIP No"

curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv | sed 's/^[#].*//g' 

# opcion 2

# descarga el .csv
#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv

# elimina las lineas que empiezan con # despues  borra los espacios  y finalmente borra  la primera linea. 
sed 's/^[#].*//g' hyg.csv | sed '/^$/d' | sed '1d' > pegaditos.csv


#rm pegaditos.csv
echo 'End' | figlet