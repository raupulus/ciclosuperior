
#!/bin/bash
#####################################
## Buscar archivo en un directorio ##
#####################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un$amarillo Directorio$verde y luego un solo$amarillo archivo$verde a buscar"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 Directorio$azul archivo$noColor"
	echo ""
}

# Comprobar que exista parámetro de entrada
# El primero sea un directorio, segundo un archivo y exista, tercer que solo haya 2 parámetros
if [ -d $1 ] && [ -f $2 ] && [ $# -eq 2 ]; then
	echo -e "\n$verde Comprobando si existe el archivo $rojo$2$verde en el directorio $rojo$1$noColor\n"
	sleep 2s

	# Comprueba si el archivo existe para copiarlo
	if [ 1 -eq `find $1 -type f -name $2 | wc -l` ]; then
		echo "El archivo que intentas copiar ya existe en el destino"
		echo -e "Omitiendo copia"
	else
		echo -e "\n$verde Copiando el archivo $rojo$2$verde al directorio $rojo$1$noColor\n"
		cp $2 $1
	fi
else
	info
	exit 1
fi
exit 0
