
#!/bin/bash
#######################################
## Empaquetar  Directorios de entrada##
#######################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un nombre para el$amarillo Archivo comrpimido$verde y los $amarillo directorios$verde a empaquetar"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 $azul nombre directorio1 directorio2 directorio3...$noColor"
	echo ""
}

DIR="" #Variable con Directorios a comprimir
NOMBRE="$1.tar.gz" # Meto el nombre del tar.gz en una variable
shift 1 #Me salto el nombre que sería $1 y ahora esto es el primer directorio a empaquetar

# Comprobar que exista parámetro de entrada
# Exista el primer parámetro y exista mínimo un directorio
if [ $# -gt 0 ]; then
	for i in $*
	do
		#Recorre todos los directorios pasados para comprobar que existen
		if [ ! -d $i ]; then
			info
			exit 1
		fi
		DIR="$DIR $i" #Creo cadena con nombre de directorios a comprimir
	done

	#Comprimir
	tar -cvzf $NOMBRE $DIR
	echo "Archivo Comprimido"
else
	info
	exit 1
fi


exit 0
