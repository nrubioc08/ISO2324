#!/bin/bash
#
# Script para comprobar número de parámetros
# Autor: Nicolás Rubio Cuéllar
# Fecha: 08-01-2024

clear

if [ $# == 2 ]; then
        echo OK.
else
        echo Error, el número de parametros no es el correcto.
fi
