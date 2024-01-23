#!/bin/bash
#
# Calculadora
# Autor: Nicolás Rubio Cuéllar
# Fecha: 23-01-2024

clear

echo Nicolás Rubio Cuéllar

if [ $# != 2 ]; then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo "El nombre de archivo introducido ya existe."
	exit
fi

i=1
while [ $i -le $2 ]; do
	read -p "Operación Op1 Op2 " op op1 op2
	echo $op $op1 $op2
	case $op in
		S)
			suma=$(($op1+$op2))
			echo $op1 + $op2 = $suma
			echo $op $op1 $op2 >> $1
		;;
		R)
			resta=$(($op1-$op2))
			echo $op1 - $op2 = $resta
			echo $op $op1 $op2 >> $1
		;;
		M)
			mult=$(($op1*$op2))
			echo $op1 x $op2 = $mult
			echo $op $op1 $op2 >> $1
		;;
		D)
			div=$(($op1/$op2))
			echo $op1 / $op2 = $div
			echo $op $op1 $op2 >> $1
		;;
		X)
			echo "Saliendo del script..."
			exit
		;;
		*)
			echo "Error, operación incorrecta"
			exit
		;;
	esac
i=$(($i+1))
done

p=$(pwd)
echo $p/$1
cat $1
