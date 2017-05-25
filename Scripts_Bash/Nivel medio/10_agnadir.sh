#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

function leeme() {
	while read line
	do
		read input
		if [ $input = "fin" ] || [ $input = "FIN" ]; then
			break
		else
			echo $input >> $1
		fi
	done
}

if [ $# -eq 1 ] && [ -f $1 ]; then
	echo "Recibe un parámetro"
	leeme
elif [ $# -eq 2 ] && [ -f $1 ] && [ -f $2 ]; then
	echo "Recibe dos parámetros"
	leeme
	cat $1 >> $2
else
	echo "Número de parámetros erróneos o no existen los archivos"
fi