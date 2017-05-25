#!/bin/bash
#####################################################
## Mostrar el/los ficheros pasados como parámetros ##
#####################################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un parámetro y que exista el archivo"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 archivo1 archivo2 archivo3...$noColor"
	echo ""
}

if [ $# -eq 0 ]; then
	info
	exit 1
else
	for i in $*
		do
			if [ -r $i ]; then #Comprueba si existe para mostrar o avisar
				more $i
			else
				echo -e "$verde El archivo$rojo $i$verde no existe, ignorando$noColor"
			fi
		done
fi
