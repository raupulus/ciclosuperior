#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

#Escribe un script llamado apagar.sh que pasando por argumentos permita:
# • Reiniciar el equipo ahora (opción –n)
# • Reiniciar el equipo dentro de N minutos (opción –l) (el valor de N se pasa
#   como segundo parámetro)
# Si el usuario no escribe ningún parámetro entonces nos mostrará las listas
# de opciones.

ELE=false
TIEMPO=""

if [ `echo $1` = "-l" ] && [ `echo $2` = "-n" ] && [ $# -eq 3 ]; then
	ELE=true
	TIEMPO=$3
	echo "Se cumple"
elif [ `echo $1` = "-l" ];
	echo "Se cumple2"
else
	echo "Ninguna"
fi


exit 0