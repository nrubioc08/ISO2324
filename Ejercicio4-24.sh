#!/bin/bash
#
# Script direccion IP
# Autor: Nicolás Rubio Cuéllar
# Fecha: 10-01-2024

clear

read -p "Introduzca una IP " ip

ip_1=$(echo $ip | cut -d "." -f 1)
ip_2=$(echo $ip | cut -d "." -f 2)
ip_3=$(echo $ip | cut -d "." -f 3)
ip_4=$(echo $ip | cut -d "." -f 4)

if [ $ip_1 -le 255 ] && [ $ip_2 -le 255 ] && [ $ip_3 -le 255 ] && [ $ip_4 -le 255 ]; then
        if 
        if [ $ip_1 == 127 ]; then
                echo "Esta IP es local"
        fi
        if [ $ip_1 == 10 ]; then
                echo "Esta IP es privada"
        fi
        if [ $ip_1 == 172 ] && [ $ip_2 -ge 16 ] && [ $ip_2 -le 31 ]; then
                echo "Esta IP es privada"
        fi
        if [ $ip_1 == 192 ] && [ $ip_2 == 168 ]; then
                echo "Esta IP es privada"
        fi
        if [ $ip_1 == 169 ] && [ $ip_2 == 254 ]; then
                echo "Esta IP es privada"
        fi
else
        echo "La IP introducida no existe."
fi
