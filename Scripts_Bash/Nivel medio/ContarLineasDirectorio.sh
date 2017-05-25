#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

#

TOTAL=0 
SUMADOR=0

#Muestra todas las líneas de cada archivo
TMP=(`find  -type f -exec wc -l {} \; | cut -d " " -f 1`)

#TOTAL=`wc -w $TMP`

echo $TMP

#echo $TOTAL