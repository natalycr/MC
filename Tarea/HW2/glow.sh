#! /bin/ bash

clear

echo 'Punto 2'| figlet 

# entro a  gnuplot
gnuplot

set parametric 
r="$1" 		# define el radio con el numero que entra  como parámetro

set trange [0:2.0*pi] 	# determina los valores de  t para la función paramétrica 
		# crea la función del circulo
set xlabel 'x' -2, 2
set ylabel 'y' -2, 2
set title 'Circle'
plot x
fx(t)= r*cos(t)
fy(t)= r*sin(t)
set size 2,2
plot fx(t), fy(t) 		#gráfica el círculo

# con for hacemos el numero de   ciclos :) revisar la t y el comando de lapagina 

