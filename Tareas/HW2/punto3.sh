#Punto 3 como limpiar los datos

# Del copy paste de  github pegamos el texto encriptado en un nuevo archivo

sed '/^Page /d' bigenigna.txt > pu1.txt

#rm pu1.txt

sed 's/\t//g' > pu2.txt
