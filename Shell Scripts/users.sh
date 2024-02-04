#!/bin/bash
#
# Entregable 4: recopilar info de usuarios para mostrar Usuarios y UID.
# Autor: Nicolás Rubio Cuéllar
# Fecha: 02-02-2024

clear

if [ $# -gt 1 ]; then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ $# == 1 ]; then
	variable=$1
fi

if [ $# == 0 ]; then
	variable=1000
fi
dia=$(date +"%d-%m-%y"
hora=$(date +"%H:%M")

echo "===================================================================="
echo
echo "Informe de usuarios el día $dia a las $hora"
echo

pr1=$(cut -f 3 -d ":" /etc/passwd)
usuariosContados=0
for i in $pr1; do
	if [ $i -ge $variable ]; then
		usuario=$(cut -f 1,2,3,4 -d ":" /etc/passwd | grep ":$i:" | cut -f 1 -d ":")
		echo $usuario - $i
		echo
		usuariosContados=$(($usuariosContados+1))
	fi
done


echo
echo "Total: $usuariosContados usuarios"
echo
echo "===================================================================="

echo "$dia - $hora - El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos
