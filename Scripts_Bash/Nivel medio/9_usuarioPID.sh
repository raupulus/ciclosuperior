#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Se puede utilizar la variable UID pero da problemas si cambias de usuario por ejemplo
miUID=`id | cut -d "=" -f2 | cut -d "(" -f1`

if [ $# -ne 0 ]; then
	echo "Error en el número de parámetros pasados"
	exit 1
fi

echo "Introduce un número"
while true
do
	read input
	if [ $input -eq $miUID ]; then
		echo "Has acertado"
		break
	elif [ $input -lt $miUID ]; then
		echo "El UID es mayor"
	elif [ $input -gt $miUID ]; then
		echo "El UID es menor"
	else
		echo "Error no expecificado"
		exit 1
	fi
done

exit 0