#!/bin/bash

if [ -z $1 ];	then
	echo "#################### ERROR ####################"
	echo "Se necesita un parámetro como directorio"
	echo "Ejemplo: sh script.sh directorio"
	exit 1
elif [ $# -gt 1 ]; then
	echo "#################### ERROR ####################"
	echo "Se ha introducido más de 1 parámetro"
	echo "Ejemplo: sh script.sh directorio"
	exit 1
elif [ -d $1 ]; then
	echo "#################### ERROR ####################"
	echo "El directorio que intentas crear ya existe"
	exit 1
else
	echo "Creando directorio"
	mkdir $1
	if [ -d $1 ]; then
		echo "Directorio $1 creado correctamente"
		exit 0
	else
		echo "Fallo al crear el directorio $1"
		exit 1
	fi
fi

