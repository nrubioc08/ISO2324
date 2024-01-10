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



if [ $ip_1 ]; then

        if [ $ip_1 == 127 ] && if [ $ip_2 -le 255 ] && [ $ip_3 -le 255 ] && [ $ip_4 -le 255 ]; then

                echo "Esta IP es local"

        else

                echo "Esa IP no existe"

        fi

        if [ $ip_1 == 10 ] && if [ $ip_2 -le 255 ] && [ $ip_3 -le 255 ] && [ $ip_4 -le 255 ]; then

                echo "Esta IP es privada"

        else

                echo "Esa IP no existe"

        fi

        if [ $ip_1 == 172 ] && if [ $ip_2 -le 255 ] && [ $ip_3 -le 255 ] && [ $ip_4 -le 255 ]; then

                echo "Esta IP es privada"

        else

                echo "Esa IP no existe"

        fi

        if [ $ip_1 == 192 ] && if [ $ip_2 -le 255 ] && [ $ip_3 -le 255 ] && [ $ip_4 -le 255 ]; then

                echo "Esta IP es privada"

        else

                echo "Esa IP no existe"

        fi

        if [ $ip_1 == 172 ]; then

                if [ $ip_2 == 254 ]; then

                        echo "Esta IP es privada"

                fi

        fi

else

        echo "Esta IP es pública"

fi
