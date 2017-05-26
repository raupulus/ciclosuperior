#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

# Realiza un script llamado buscar.sh que busque todos los ficheros que
# busque cualquier fichero que pueda ser modificado por cualquier usuarios (-
# -- --- rwx) y guarde la lista de ficheros con la ruta exacta en el archivo
# archivos_peligrosos.txt

LOG=archivos_peligrosos.txt

find / -type f -perm -007 2>> /dev/null >> $LOG

echo ""
echo "Existen `wc -l $LOG` archivos en riesgos, consulta cuales son en el archivo $LOG"