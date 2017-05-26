#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Modifica el programa anterior haciendo que si el segundo parámetro es más
# pequeño que el primero, los intercambie dentro del script. Tendremos que
# comprobar que los números son distintos.

INICIO=0
FIN=0

echo "Introduce el primero número (Inicio del rango)"
read INICIO

echo "Introduce el segundo número (Fin del rango)"
read FIN

if [ $INICIO -lt $FIN ]; then
	clear
	echo "Mostrando rango"
	seq $INICIO $FIN
elif [ $INICIO -gt $FIN ]; then
	clear
	echo "Invirtiendo posición de los números y mostrando rango"
	seq $FIN $INICIO
else
	echo "No se cumplen los requisitos"
	echo "Se necesita un segundo número mayor que el primero"
fi