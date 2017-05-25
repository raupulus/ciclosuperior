#!/bin/bash

if [ -z $1 ];	then
	echo "#################### ERROR ####################"
	echo "Se necesitas un parámetro como archivo a comprobar"
	echo "Ejemplo: sh script.sh archivo"
	exit 1
elif [ $# -gt 1 ]; then
	echo "#################### ERROR ####################"
	echo "Se ha introducido más de 1 parámetro"
	echo "Ejemplo: sh script.sh archivo"
	exit 1
elif [ -f $1 ]; then
	echo "El archivo $1 existe"
	chmod u+x $1
	ls -Al $1
	exit 0
else
	echo "El archivo $1 no existe"
	exit 0
fi

