#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

#Escribe un script llamado apagar.sh que pasando por argumentos permita:
# • Reiniciar el equipo ahora (opción –n)
# • Reiniciar el equipo dentro de N minutos (opción –l) (el valor de N se pasa
#   como segundo parámetro)
# Si el usuario no escribe ningún parámetro entonces nos mostrará las listas
# de opciones.

TIEMPO=""

function ayuda() {
	echo ""
	echo "-n Reinicia el equipo ahora"
	echo "-l N(minutos) Reinicia el equipo dentro de los minutos indicados"
	echo ""
	echo "Sintaxis para reiniciar ahora: sh $0 -n"
	echo "Sintaxis para reiniciar en 10 minutos: sh $0 -l 10"
}

if [ $# -eq 0 ]; then
	ayuda
elif [ $# -eq 1 ] && [ $1 = "-n" ]; then
	echo "Preparando para reiniciar el equipo, pulsa cualquier tecla"
	read input
	shutdown -r
elif [ $# -eq 2 ] && [ `echo $1` = "-l" ] && [ `echo $2` -gt 0 ]; then
	TIEMPO=$2
	shutdown -r "+$TIEMPO"
	echo "Reinicio programado en $TIEMPO minutos"
else
	ayuda
	exit 1
fi


exit 0