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
	echo "Contando elementos con permiso de lectura en el directorio $1"
	echo ""
	echo "El número de archivos con permisos de lectura es --> `find $1 -type f -perm -a=r | wc -l`"
	exit 0
else
	echo "#################### ERROR ####################"
	echo "El directorio $1 NO existe"
	exit 1
fi

