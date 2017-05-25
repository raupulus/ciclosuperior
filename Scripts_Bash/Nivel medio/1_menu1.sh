#!/bin/bash

function opciones() {
	echo "1) Crear archivo con el contenido de otro"
	echo "2) Crear un directorio y dentro crear otro"
	echo "3) Cambiar el nombre de un archivo"
	echo "4) Salir"
}

function crearArchivo() {
	echo "Introduce el nombre de fichero a crear"
	read archivoNuevo
	echo "Introduce el nombre del archivo que copiaras el contenido"
	read archivoCopiar
	#Comprobar que la cadena para nuevo existe y al archivo también
	if [ -f $archivoCopiar ]; then
		cat $archivoCopiar >> $archivoNuevo &
		sleep 2s
	else
		echo "Ha ocurrido un error"
		echo "No se ha creado el archivo $archivoNuevo"
		sleep 5s
	fi
}

function crearDir() {
	echo "Introduce el nombre del directorio crear"
	read dirNuevo
	echo "Introduce el nombre del directorio a copiar o crear dentro del anterior"
	read dirCopiar
	#Comprobar que la cadena para nuevo existe y al archivo también
	if [ -n $dirNuevo ] && [ -n $dirCopiar ]; then
		#Si existe el directorio a colocar dentro
		if [ -d dirCopiar ]; then
			mkdir $dirNuevo
			mv $dirCopiar $dirNuevo
		else
			mkdir $dirNuevo "$dirNuevo/$dirCopiar"
		fi
	else
		echo "No se ha creado el directorio $dirNuevo"
		sleep 5s
	fi
}

function cambiarNombre() {
	echo "Introduce el nombre de archivo (miArchivo.txt por ejemplo)"
	read nom
	echo "Introduce el nuevo nombre"
	read newnom
	if [ -n $nom ] && [ -n $newnom ] && [ -f $nom ]; then
		mv $nom $newnom
	else
		echo "Falta un nombre de archivo, este no existe o no tienes permisos"
	fi
}

while true :
do
	clear
	opciones
	read input
	case $input in
		1) crearArchivo;;
		2) crearDir;;
		3) cambiarNombre;;
		4) break;;
		*) echo "Entrada no válida";;
	esac
done

clear
exit 0
