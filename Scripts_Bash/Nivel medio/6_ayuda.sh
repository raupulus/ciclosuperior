#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

function info() {
	echo "Solo puede recibirse como parámetros:"
	echo "-h muestra esta ayuda"
	echo "El nombre de un archivo para comprobar sus permisos"
	echo ""
	echo "Sintaxis: sh $0 -h"
	echo "Sintaxis: sh $0 archivo"
}

if [ $# -eq 1 ]; then
	if [ $1 = "-h" ]; then
		echo "Accediendo a la ayuda:"
		info
	elif [ -f $1 ]; then
		echo "Permisos para este archivo: `ls -l $1 | cut -d " " -f1`"
	else
		echo "El archivo no existe o no se puede leer"
	fi
else
	info
	exit 1
fi

exit 0