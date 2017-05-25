#!/bin/bash

if [ $# != 1 ]; then
	echo "Número de parámetros incorrecto, solo necesito 1 archivo"
	exit 1
elif [ ! -f $1 ]; then
	touch $1
	if [ -f $1 ]; then
		echo "Archivo $1 creado"
	else
		echo "Error al crear el archivo $1 (saliendo)"
		exit 1
	fi
fi

AFECTADO=""
PERMISO=""
TIPO=""

function afectado() {
	while true
		do
			clear
			echo "1) Usuario"
			echo "2) Grupo"
			echo "3) Otros"
			echo "4) Atrás"

			read input
			case $input in
				1) AFECTADO="u";tipo;;
				2) AFECTADO="g";tipo;;
				3) AFECTADO="o";tipo;;
				4) break;;
				*) echo "Entrada no válida";;
			esac
		done
}

function tipo() {
	while true
		do
			clear
			echo "1) Lectura"
			echo "2) Escritura"
			echo "3) Ejecución"
			echo "4) Atrás"

#En el siguiente apartado falla $1 o $x sin tomar este valor, el resto bien
			read input
			case $input in
				1) TIPO="r"
					CAMBIAR="chmod $AFECTADO$PERMISO$TIPO $1"
					`$CAMBIAR`;;
				2) TIPO="w"
					x="$1"
					echo $x
					chmod $AFECTADO$PERMISO$TIPO $x
					ls -l $1
					echo "CAMBIADO";;
				3) TIPO="x"
					CAMBIAR="chmod $AFECTADO$PERMISO$TIPO $1"
					`$CAMBIAR`;;
				4) break;;
				*) echo "Entrada no válida";;
			esac
		done
}

while true
	do
		clear
		echo "1) Añadir Permisos"
		echo "2) Quitar Permisos"
		echo "3) Salir"

		read input
		case $input in
			1) PERMISO="+";afectado;;
			2) PERMISO="-";afectado;;
			3) break;;
			*) echo "Entrada no válida";;
		esac
	done

clear

ls -l $1

exit 0
