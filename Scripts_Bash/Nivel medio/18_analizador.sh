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

REPETIR=true

function menu() {
	echo "1. Comprobar si existe en el directorio actual"
	echo "2. Mostrar nombre y tamaño"
	echo "3. Siguiente parámetro"
}

function comprobar() {

}

for i in $*; do
	TMP=`du -b $i`
	TMP=`echo $TMP | tr -s " " | cut -d " " -f 1`
	
	while $REPETIR; do
		echo "Estás tratando con el archivo $i"
		echo ""
		menu
		
		read input

		case $input in
			1) ;;
			*) echo "No se ha borrado $i";;
		esac
	done
	if [ -f $i ]; then
		

	else
		echo "Error, no se procesa el argumento: $i"
	fi
done


exit 0