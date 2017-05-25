#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

NOMBRE=$1
PID=`ps aux | grep nautilus | tail -n -1 | tr -s " " | cut -d " " -f2`

#ps aux | grep nautilus | tail -n -1

if [ $# -eq 1 ]; then
	echo "El proceso $NOMBRE con PID $PID ha sido eliminado"
	killall $NOMBRE 2> /dev/null #Mato por nombre
	kill -9 $PID 2> /dev/null #Remato por PID
else
	echo "Número de parámetros incorrecto"
	exit 1
fi

exit 0