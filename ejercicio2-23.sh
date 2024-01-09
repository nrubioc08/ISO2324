#!/bin/bash
#
# Script con un parametro para chequear una carpeta y hace un fichero txt.
# Autor: Nicolás Rubio Cuéllar
# Fecha: 09-01-2024

clear

if [ $1 ==  ]; then
        read -p "Introduzcca un nombre para la carpeta " nombreCarpeta
        if [ -d $nombreCarpeta ]; then
                if [ $(chmod +w $nombreCarpeta) ]; then
                cd $nombreCarpeta
                echo hola.txt > Bienvenido
                else
                        chmod +w $nombreCarpeta
                        cd $nombreCarpeta
                        echo hola.txt > Bienvenido
                fi
        else
                mkdir $nombreCarpeta
                if [ $(chmod +w $nombreCarpeta) ]; then
                cd $nombreCarpeta
                echo hola.txt > Bienvenido
                else
                        chmod +w $nombreCarpeta
                        cd $nombreCarpeta
                        echo hola.txt > Bienvenido
                fi
        fi
else
        if [ -d $1 ]; then
                if [ $(chmod +w $1) ]; then
                cd $1
                echo hola.txt > Bienvenido
                else
                        chmod +w $1
                        cd $1
                        echo hola.txt > Bienvenido
                fi
        else
                mkdir $1
                if [ $(chmod +w $1) ]; then
                cd $1
                echo hola.txt > Bienvenido
                else
                        chmod +w $1
                        cd $1
                        echo hola.txt > Bienvenido
                fi
        fi
fi
