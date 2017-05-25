#!/bin/bash
TMP=$1
MODULO=""

if [ $1 < 100 ] && [ $# = 1 ]; then
	while [ $TMP < 100 ];
		do
			if [ $TMP -lt 101 ];
				then break
			fi

			TMP=$(($TMP/101))
			MODULO=$(($TMP%101))

			echo "a $TMP"
			echo "b $MODULO"
		done

else
	echo "El número introducido es inválido o menor de 101"
	echo "Sintaxis: script.sh valor"
	exit 1
fi

exit 0
