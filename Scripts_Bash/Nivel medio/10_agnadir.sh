#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

ARCHIVO=`echo $1`
echo $ARCHIVO

function leeme() {
	while read input
	do
		if [ $input = "fin" ] || [ $input = "FIN" ]; then
			break
		else
			echo "Añadiendo $input en el archivo $ARCHIVO"
			echo $input >> $ARCHIVO
			echo ""
		fi
	done
}

if [ $# -eq 1 ] && [ -f $1 ]; then
	echo "Recibe un parámetro"
	echo "Archivo donde se escribirá --> $1"
	echo ""
	leeme
elif [ $# -eq 2 ] && [ -f $1 ] && [ -f $2 ]; then
	echo "Recibe dos parámetros"
	leeme
	cat $1 >> $2
else
	echo "Número de parámetros erróneos o no existen los archivos"
fi

exit 0