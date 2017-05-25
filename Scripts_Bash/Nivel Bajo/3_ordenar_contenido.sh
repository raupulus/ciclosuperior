#!/bin/bash

function modoUso() {
	echo "Ejemplo: sh script.sh archivo A|Z"
	echo ""
	echo "A --> Ordena ascendentemente"
	echo "Z --> Ordena descendentemente"
}

if [ -z $1 -o -z $2 ];	then
	echo "#################### ERROR ####################"
	echo "Se necesitan dos parámetro"
	modoUso
	exit 1
elif [ $# -gt 2 ]; then
	echo "#################### ERROR ####################"
	echo "Se han introducido más de 2 parámetros"
	modoUso
	exit 1
elif [ -f $1 ]; then #Comprueba que existe el archivo
	case $2 in
		A) 	echo "`sort $1`" > $1;exit 0;; #Ordena ascendentemente
		Z) 	echo "`sort -r $1`" > $1;exit 0;; #Ordena descendentemente
		*) 	echo "#################### ERROR ####################"
				modoUso; exit 1;;
	esac
else
	echo "El archivo $1 no existe"
	exit 1
fi

