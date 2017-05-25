
#!/bin/bash
#########################################
## Devolver suma de parámetros pasados ##
#########################################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

function info(){
	echo -e "$verde Es necesario un parámetro$amarillo numérico$verde o más"
	echo -e "$verde Asegúrate de que solo contiene números"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0 parámetro1 parametro2..$noColor"
	echo ""
}

if [ $# -eq 0 ]; then
	info
	exit 1
else
	sumatorio=0
	echo -e "$verde Cantidad total de parámetros:$rojo $#"
	for (( i=$#; i>0; i-- ))
		do
			eval z='${'$i'}' #Concatena la variable y obtiene su valor #Tiene en cuenta +10
			sumatorio=$((sumatorio + z))
		done
	echo -e "$verde El sumatorio de los valores pasados resulta en -->$rojo $sumatorio$noColor"
fi
exit 0
