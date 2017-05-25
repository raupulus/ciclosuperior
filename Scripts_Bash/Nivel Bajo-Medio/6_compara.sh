
#!/bin/bash
#######################
## Comparar Archivos ##
#######################

# Variables
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
noColor="\033[1;00m"

linA=`cat $1 | wc -l`
linB=`cat $2 | wc -l`
worA=`cat $1 | wc -w`
worB=`cat $2 | wc -w`
carA=`cat $1 | wc -m`
carB=`cat $2 | wc -m`
tamA=`cat $1 | wc -c`
tamB=`cat $2 | wc -c`


function info(){
	echo -e "$verde Es necesario dos$amarillo archivos"
	echo -e "$verde Ejecuta con la sintaxis:$rojo sh $0$azul archivo1 archivo2$noColor"
	echo ""
}

# Comprobar que exista parámetro de entrada y sean archivos
if [ -f $1 ] && [ -f $2 ] && [ $# -eq 2 ]; then
	echo ""
	echo -e "$verde                     Comparando:"
	echo -e "    Archivo$rojo $1$verde con Archivo$rojo $2$noColor"
	echo -e "$amarillo-----------------------------------------------------"
	echo -e "|$azul Comparando    Archivo 1    Archivo 2    Diferencia$amarillo|"
	echo -e "-----------------------------------------------------"
	echo -e "|$verde Nº Líneas$rojo         $linA             $linB           `expr $linA - $linB`$amarillo"
	echo -e "-----------------------------------------------------"
	echo -e "|$verde Nº Palabras$rojo       $worA             $worB           `expr $worA - $worB`$amarillo "
	echo -e "-----------------------------------------------------"
	echo -e "|$verde Nº Caracteres$rojo     $carA             $carB           `expr $carA - $carB`$amarillo"
	echo -e "-----------------------------------------------------"
	echo -e "|$verde Tamaño (bytes)$rojo    $tamA             $tamB           `expr $tamA - $tamB`$amarillo"
	echo -e "-----------------------------------------------------"
else
	info
	exit 1
fi
exit 0
