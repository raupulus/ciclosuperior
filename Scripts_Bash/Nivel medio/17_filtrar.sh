#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Realiza un script que admite un número indeterminado de parámetros. Si el
# parámetro es un fichero y ocupa más de 50 bytes se borrará. Si es un
# directorio se pedirá confirmación antes de borrarlo. En cualquier otro caso se
# mostrará un mensaje de error “no se procesa el argumento: <argumento>”.
# Sólo se procesará el directorio de trabajo.


if [ $# -lt 1 ]; then
	echo "Se necesita al menos 1 parámetro"
	exit 1
fi



exit 0
