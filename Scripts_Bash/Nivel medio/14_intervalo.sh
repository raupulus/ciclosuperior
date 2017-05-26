#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Crea un script llamado intervalo.sh donde el usuario introduce dos números
# enteros y deben devolverse todos los números enteros del intervalo formado
# por los dos números. El programa debe comprobar que se pasan sólo 2
# números y que el segundo es mayor que el primero, en caso contrario mostrar
# mensaje de error.

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
else
	echo "No se cumplen los requisitos"
	echo "Se necesita un segundo número mayor que el primero"
fi