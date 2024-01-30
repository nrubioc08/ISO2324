#!/bin/bash
#
# Script entregable 3
# Autor: Nicolás Rubio Cuéllar
# Fecha: 29-01-2024

clear

if [ $# -gt 2 ]; then
        echo "Número de parámetros incorrecto."
        exit
fi

if [ -f $1 ]; then
        echo "Este archivo ya existe."
        exit
fi

if [ ! -d $2 ]; then
        echo "Este directorio no existe."
        exit
fi

fichero=$(ls $2)
if [ -z $fichero ]; then
        echo "Este directorio está vacío"
        exit
fi

echo
echo "Nicolás Rubio Cuéllar"

ficheros=$( ls $2/*.txt )

touch $1

for i in $ficheros; do
        lineas=$( cat $i | wc -l )
        if [ $lineas -ge 5 ] && [ -f $1 ]; then
                echo $i
		echo $i >> $1
		palabras=$(cat $i | wc -w)
		echo "El fichero original tiene $palabras palabra(s)" > $i.q
		echo "" >> $i.q
		cat $i >> $i.q
	fi
	echo
        echo $i
        echo "Contiene $lineas linea(s)"
        echo
done

num=$(cat $1 | wc -l)
echo "Hay $num archivo(s) con 5 o más lineas de texto"
echo $num >> $1
