#!/bin/bash
TMP=$1
MODULO=""

if [ $# = 1 ]; then
	if [ $1 -lt 101 ]; then
		echo "Es menor de 101, por lo tanto no es divisible... espabila!"
		exit 1
	else
		echo "El número introducido es $1"
	fi
else
	echo "Se necesita un número como parámetro (solo un número)"
	echo "Sintaxis: script.sh valor"
	exit 1
fi

exit 0
