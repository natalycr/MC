echo Taller 
echo Punto 1 creando archivo csv

for i in {1..1000}
do
	echo $i", "$(($i*$i)) >> numeros.csv
done
