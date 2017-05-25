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
}

if [ $# -eq 1 ]; then

else
	info
	exit 1
fi

exit 0