#! /bin/ bash

clear

echo 'Punto 2'| figlet 


t=0 # esto es para inicializar
rad=0

echo "Para detener el ciclo presione [CTRL + Z]"

while (true) # ciclo infinito!
do 
	echo " fuera del if "$rad" "
	
		
	if (("rad">=0 && "rad" <= 1))
	then
		# realiza la gráfica
		echo "en el if"
		rad= $(echo "rad+(1/10)" | bc)
		echo $rad
		echo "$rad para revisar dentro del if "
		
		gnuplot <<- EOF
			set term dumb
	 		# define el radio con el numero que entra  como parámetro

			set parametric 
			set trange [0:2.0*pi] 	# determina los valores de  t para la función paramétrica 
		
				# crea la función del circulo
			r= "$rad"
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
			
	else
		((r==0)) # inicializa nuevamente el r 
	fi 	

	sleep 1 # duerme cada segundo 
	
done

# tengo problemas con las operaciones en el bash 
#no esta tomando los  valores  decimales  y no se  puede  cambiar la variable con 
#var= $(echo ""|bc)
#
#