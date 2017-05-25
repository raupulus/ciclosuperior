
#!/bin/bash
####################################
## Comprobar Fichero o Directorio ##
####################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un parámetro$amarillo (Fichero|Directorio)"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 Fichero|Directorio$noColor"
	echo ""
}

# Comprobar que exista parámetro de entrada
if [ $# -eq 0 -o $# -gt 1 ]; then
	info
	exit 1

#Comprobar que existe el fichero
elif [ -f $1 ]; then
	echo -e "$verde Es un$rojo archivo"
	echo -e "$verde Tipo del archivo:$rojo `file $1 | tr -s \" \" | cut -d \" \" -f2-10`$noColor"

#Comprobar que existe el directorio
elif [ -d $1 ]; then
	echo -e "$verde Es un$rojo directorio$noColor"
else
	echo -e "$azul No existe$noColor"
fi
exit 0
