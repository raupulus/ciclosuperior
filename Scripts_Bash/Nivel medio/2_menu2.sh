#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

function copiar() {
	echo "Introduce directorio a copiar"
	read dir1

	echo "Introduce el directorio destino"
	read dir2

	if [ -d $dir1 ] && [ -d $dir2 ]; then
		cp -R $dir1 "$dir2/"
	else
		echo "Ha ocurrido un error, comprueba permisos y directorios"
		echo "Pulsa una tecla para continuar...";read nulo
	fi
}

function listar() {
	echo "Introduce el caracter con el que comenzarán los archivos a buscar en /etc"
	read car

	find /etc -name "$car*" | more
}

while true
do
	clear
	echo "<1> Copiar directorio introducido"
	echo "<2> Listar archivos del directorio /etc comenzando por el caracter introducido"
	echo "<3> Salir"

	read input

	case $input in
		1) copiar;;
		2) listar;;
		3) break;;
		*) echo "Opción no reconocida...";;
	esac
done

exit 0
