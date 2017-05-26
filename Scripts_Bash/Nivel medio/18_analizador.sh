#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Crea un script que admita varios, uno o ningún argumento. Si se indica algún
# argumento, éste será el nombre de algún fichero. Mientras exista un
# argumento se mostrará el menú.
# 1. Comprobar si existe en el directorio actual.
# 2. Mostrar nombre y tamaño
# 3. Siguiente parámetro.

TMP=""
ACTUAL=""

function menu() {
	echo "1. Comprobar si existe en el directorio actual"
	echo "2. Mostrar nombre y tamaño"
	echo "3. Siguiente parámetro"
}

function comprobar() {
	if [ -f $ACTUAL ]; then
		echo "El archivo $ACTUAl existe"
	else
		echo "El archivo $ACTUAL no existe"
	fi
}

function mostrar() {
	TMP=`du -b $ACTUAL`
	TMP=`echo $TMP | tr -s " " | cut -d " " -f 1`
	
	echo "El archivo $ACTUAL tiene un tamaño de $TMP bytes"
}

for i in $*; do
	ACTUAL=$i
	
	clear
	
	while true; do
		echo "Estás tratando con el archivo $ACTUAL"
		echo ""
		menu
		
		read input

		case $input in
			1) comprobar;;
			2) mostrar;;
			3) break;;
			*) echo "Parámetro no entendido";;
		esac
	done
	
done

exit 0