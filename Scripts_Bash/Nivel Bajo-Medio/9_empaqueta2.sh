
#!/bin/bash
############################
## Empaquetar  Directorio ##
############################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un $amarillo Directorio $verde a empaquetar"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 $azul Directorio$noColor"
	echo ""
}

# Exista un parámetro primer parámetro y sea un directorio
if [ $# -eq 1 ] && [ -d $1 ]; then
	#Comprimir
	tar -cvzf "`date +%y%b`-`date +%d`_$1.tar.gz" $1
	#echo "`date +%y%b`-`date +%d`_$1.tar.gz"
	echo "Archivo Comprimido"
else
	info
	exit 1
fi

exit 0
