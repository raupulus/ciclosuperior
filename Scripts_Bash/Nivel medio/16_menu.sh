#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Crea un script que muestre el siguiente menú al usuario con las siguientes opciones:
# 1. Copiar un archivo a otro directorio
# 2. Mover un archivo a otro directorio
# 3. Cambiar de nombre a un archivo
# 4. Borrar archivo
# 6. Salir

function menu() {
	clear
	echo ""
	echo "1. Copiar un archivo a otro directorio"
	echo "2. Mover un archivo a otro directorio"
	echo "3. Cambiar de nombre a un archivo"
	echo "4. Borrar archivo"
	echo "6. Salir"
	echo ""
	echo "Introduce una opción del menú"
}

while true; do
	menu
	read input
done

exit 0