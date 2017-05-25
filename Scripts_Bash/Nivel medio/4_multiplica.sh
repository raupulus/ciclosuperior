#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

CONT=10

if [ $1 > 0 ] && [ $# = 1 ]; then
	echo "Introduce el número"
	clear

	for (( i=0; i<=$CONT; i++))
		do
			echo "$1 x $i = `expr $1 \* $i`"
		done

else
	echo "Error"
	exit 1
fi

exit 0
