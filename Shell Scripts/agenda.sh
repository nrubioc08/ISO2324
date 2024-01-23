#!/bin/bash
#
# Ejercicio entregable de una agenda con 5 opciones distintas.
# Autor: Nicolás Rubio Cuéllar
# Fecha: 17-01-2024

clear

op=1

while [ $op != e ]; do
	echo "Agenda de contactos"
	echo "Seleccione una de las siguientes opciones:"
	echo "a) Añadir una entrada"
	echo "b) Buscar por DNI"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"
	read -p "Introduzca su opción: " op
	echo
	case $op in
		a)
			echo "Añadiendo entrada"
			read -p "Introduzca el DNI " dni1
			if grep "^$dni1:" agenda.txt 2>/dev/null; then
				echo "Error, este usuario ya existe"
				echo
			else
				read -p "Introduzca el nombre " nombre1
				read -p "Introduzca los apellidos " apellidos1
				read -p "Introduzca la localidad " localidad1
				echo $dni1:$nombre1:$apellidos1:$localidad1 >> agenda.txt
				echo "Se han introducido los datos"
				echo
			fi
		;;
		b)
			read -p "Introduzca el DNI a buscar: " dni2
			if grep "^$dni2:" agenda.txt 2>/dev/null; then
				nombre2=$(grep "^$dni2:" agenda.txt | cut -d ":" -f 2)
				apellidos2=$(grep "^$dni2:" agenda.txt | cut -d ":" -f 3)
				localidad2=$(grep "^$dni2:" agenda.txt | cut -d ":" -f 4)
				echo "La persona con DNI número $dni2 es: $nombre2 $apellidos2, y vive en $localidad2."
				echo
			else
				echo "Error, usuario no encontrado"
				echo
			fi
		;;
		c)
			if [ -s agenda.txt ]; then
				echo "Mostrando agenda"
				cat agenda.txt
				echo
			else
				echo "La agenda está vacía"
				echo
			fi
		;;
		d)
			cat /dev/null > agenda.txt
			echo "El fichero se ha vaciado"
			echo
		;;
		e)
			echo "Ha seleccionado Finalizar"
			echo
		;;
	esac
done
