# Introducir 2 listas diferentes, en una los ficheros y en otra los directorios. Después hacer un menu con 5 opciones.

import os.path
import shutil

ficheros = []
directorios = []

rutas = open("rutas.txt", mode="r")
li=rutas.readlines()
print(li)
for i in li:
    r=i.strip()
    fich = os.path.isfile(r)
    direc = os.path.isdir(r)
    if fich == True:
        print(r+ " es un fichero")
        ficheros.append(r)
    if direc == True:
        print(r+ " es un directorio")
        directorios.append(r)
    if fich == False and direc == False:
        print(r+ " no existe")

op = "Z"

while op != "E":
    print("Menú")
    print("A- Pedir nombre de fichero y eliminarlo")
    print("B- Pedir nombre de directorio y mostrar su información")
    print("C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino")
    print("D- Mostrar lista elegida por el usuario")
    print("E- Salir")
    op = input("Eliga una de las siguientes opciones: ")
    match op:
        case "A":
            print("Has seleccionado la opción A")
            nombreFichero = input("Introduzca el nombre de un fichero: ")
            if os.path.isfile(nombreFichero):
                os.system("rm " + nombreFichero)
                borrado = os.path.isfile(nombreFichero)
                if borrado == False:
                    print("El fichero se ha borrado")
            else:
                print("El fichero introducido no existe")
        case "B":
            print("Has seleccionado la opción B")
            nombreDirectorio = input("Introduzca el nombre de un directorio: ")
            if os.path.isdir(nombreDirectorio):
                info = os.listdir(nombreDirectorio)
                print(info)
            else:
                print("El directorio introducido no existe")
        case "C":
            print("Has seleccionado la opción C")
            nombreFichero2 = input("Introduzca el nombre de un fichero: ")
            if os.path.isdir(nombreFichero2):
                nombreDirectorio2 = input("Introduzca el nombre de un directorio: ")
                if os.path.isdir(nombreDirectorio2):
                    copiar = shutil.copy(nombreFichero2, nombreDirectorio2)
                else:
                    print("El directorio introducido no existe")
            else:
                print("El fichero introducido no existe")
        case "D":
            print("Has seleccionado la opción D")
            lista = input("Seleccione una lista (ficheros o directorios): ")
            match lista:
                case "ficheros":
                    print(ficheros)
                case "directorios":
                    print(directorios)
                case _:
                    print("Seleccione una lista válida")
        case "E":
            print("Has seleccionado la opción E")
            print("Saliendo del programa ...")
            exit()
        case _:
            print("Error, la opción seleccionada no existe")
