# !/bin/bash
#
# Pedir nombre de usuario, mostrar uid gid y shell, si no crearlo  y comprobar que se ejecute como root
# Autor: Nicolás Rubio Cuéllar
# Fecha: 12-01-2024

clear

if [ $USER == root ]; then
        echo "No estas ejecutando como root"
fi

read -p "Introduzca un nombre de usuario " usuario

uid=$(cut -d ":" -f 3 /etc/passwd)
gid=$(cut -d ":" -f 4 /etc/passwd)
shell=$( cut -d ":" -f 7 /etc/passwd)
