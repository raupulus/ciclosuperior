
#!/bin/bash
#################################
## Mover Archivos a directorio ##
#################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un$amarillo Directorio$verde y luego archivos"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 Directorio$azul archivo1 archivo2 archivo3...$noColor"
	echo ""
}

# Comprobar que exista parámetro de entrada y el primero sea un directorio
if [ -f $1 ] | [ $# -lt 2 ]; then
	info
	exit 1
fi

echo -e "\n$verde Cantidad total de parámetros -->$rojo $#$noColor\n"

#Comprobar son archivos el resto de parámetros de entrada
for (( i=2; i<=$#; i++ ))
	do
		eval z='${'$i'}' #Concatena la variable y obtiene su valor #Tiene en cuenta +10
		if [ -f $z ]; then
			echo -e "$verde Archivo$rojo $z$verde copiándose en$rojo $1$noColor"
			cp $z $1
		else
			echo -e "$rojo$z$verde no es un archivo, no será copiado$noColor"
		fi
	done
exit 0
