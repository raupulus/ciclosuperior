#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

TMP=$1
MODULO=""

if [ $# = 1 ]; then
	if [ $1 -lt 101 ]; then
		echo "Es menor de 101, por lo tanto no es divisible... espabila!"
		exit 1
	else
		echo "El número introducido es $1"
		sleep 2s
		
		#Mientras sea mayor o igual a 101 seguir dividiendo
		while true;
		do
			if [ $TMP -lt 101 ];
				then break
			fi

			TMP=$(($TMP / 101))
			MODULO=$(($1 % 101))
		done
	fi
else
	echo "Se necesita un número como parámetro (solo un número)"
	echo "Sintaxis: script.sh valor"
	exit 1
fi

if [ $MODULO -eq 0 ]; then
	echo "Se puede dividir perfectamente obteniendo como módulo $MODULO"
else
	echo "No es divisible exactamente, tiene resto de $MODULO"
fi
exit 0
