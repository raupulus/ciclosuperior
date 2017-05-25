#!/bin/bash

if [ -z $1 ];	then
	echo "#################### ERROR ####################"
	echo "Se necesitas un parámetro como directorio"
	echo "Ejemplo: sh script.sh directorio"
	exit 1
elif [ $# -gt 1 ]; then
	echo "#################### ERROR ####################"
	echo "Se ha introducido más de 1 parámetro"
	echo "Ejemplo: sh script.sh directorio"
	exit 1
elif [ -d $1 ]; then #Comprueba que existe el directorio
	var=`ls $1 | wc -l`
	if [ $var = 0 ]; then
		echo ""
		echo "El directorio $1 está vacío"
		exit 0
	else
		echo "El directorio $1 contiene $var archivos y directorios"
		exit 0
	fi
else
	echo "#################### ERROR ####################"
	echo "El directorio $1 NO existe"
	exit 1
fi

