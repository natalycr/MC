#! /bin/ bash

clear

echo 'Purnto 1'| figlet 

# entro a  gnuplot
gnuplot <<- EOF

	set term dumb

	r=$1 		# define el radio con el numero que entra  como parámetro

	set parametric 
	set trange [0:2.0*pi] 	# determina los valores de  t para la función paramétrica 
	
		# crea la función del circulo
	
	set xlabel 'x' 
	set ylabel 'y' 
	set title 'Circle'

	fx(t)= r*cos(t)
	fy(t)= r*sin(t)
	set size 1 # le da tamaño respecto a la ventana de la terminal  
	set xrange [-2:2]  # El área de la gráfica debe ser siempre un cuadrado de lado 2 con su centro en el origen
	set yrange [-2:2]
	plot fx(t), fy(t) 		#gráfica el círculo con una ventana desde

EOF
