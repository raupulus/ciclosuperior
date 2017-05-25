#!/bin/bash

#######################################
# ###     Raúl Caro Pastorino     ### #
## ##                             ## ##
### # https://github.com/fryntiz/ # ###
## ##                             ## ##
# ###       www.fryntiz.es        ### #
#######################################

CONTADOR="0"
VUELTAS="3"
LOG="usuarios.log"

if [ -f $LOG ]; then
	touch $LOG
else
	echo "" >> $LOG
	echo "" >> $LOG
	echo "############## NUEVA SESIÓN ################" >> $LOG
	echo "" >> $LOG
fi

while true
do
	if [ $CONTADOR -ge $VUELTAS ]; then
		break
	fi
	echo "" >> $LOG
	echo "`date` | `users | wc -w` | `users`" >> $LOG
	let CONTADOR=$CONTADOR+1
	sleep 5s
done