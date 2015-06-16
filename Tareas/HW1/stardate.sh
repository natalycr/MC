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
echo "RA/º 	 DEC/º	   HIP No"

# si se quiere descarga el .csv quite el # 
#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv


# elimina las lineas que empiezan con # despues  borra los espacios  y finalmente borra  la primera linea. 
sed 's/^[#].*//g' hyg.csv | sed '/^$/d' | sed '1d' | awk -F "," '{print $10, $8, $9, $2}'> pegaditos.csv

# crea las variable X=(2015-imput) y Y=X+1 

declare -i x
declare -i y
x=2015-$1
y=X+1
#echo "print $X, $Y, $1"


# imprime las lineas  de Ra Dec y Hip si la primera  columna esta entre (2015-imput) y Y=(2015-imput)+1 
awk -F" " -v x="$x" '{ if($1!="" && $1>= x && $1<=((x+1))){print $1, $2, $3, $4}}' pegaditos.csv 

#rm pegaditos.csv

echo 'End' | figlet