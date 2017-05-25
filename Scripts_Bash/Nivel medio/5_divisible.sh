#!/bin/bash
TMP=$1
MODULO=""

if [ $# = 1 ]; then
	if [ $1 -lt 101 ]; then
		echo "Es menor de 101 y existe parametro de entrada"
	else
		echo "Es mayor o igual a 101"
	fi
else
	echo "Se necesita un número como parámetro"
	echo "Sintaxis: script.sh valor"
	exit 1
fi

exit 0
