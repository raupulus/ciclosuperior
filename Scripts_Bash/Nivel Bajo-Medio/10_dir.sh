
#!/bin/bash
############################
##          MSDOS         ##
############################

# Exista un parámetro primer parámetro y sea un directorio
for i in $*
do
	if [ $i = '/s' ]; then
		ls -R
	elif [ $i = '/w' ]; then
		ls
	elif [ $i = '/p' ]; then
		ls | more
	else
		echo "Parámetro pasado no válido"
		exit 1
	fi
done
exit 0
