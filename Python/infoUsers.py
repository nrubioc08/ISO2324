import os
import cpuinfo

uid = os.getuid()

if uid != 0:
    print("No estas ejecutando como root.")
    exit()

print("Menú")
print("Opción 1: Muestra información del SSOO e información de la CPU.")
print("Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
print(
    "Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.")
print("Opción 4: Salir.")

opc = -1

while opc != 4:
    opc = int(input("Introduzca una de las opciones: "))
    match opc:
        case 1:
            print("Has seleccionado la opción 1")
            print(os.uname())
            print(cpuinfo.get_cpu_info()["brand_raw"])
        case 2:
            print("Has seleccionado la opción 2")
            arch = open("/etc/passwd", mode="r")
            lista = arch.readlines()
            user = input("Dime un usuario: ")
            encontrado = False
            for i in lista:
                if user in i:
                    encontrado = True
            if encontrado:
                print("El usuario", user, "ya existe")
            else:
                os.system("useradd " + user)
            arch.close()
        case 3:
            print("Has seleccionado la opción 3")
            directorio = input("Introduzca una ruta absoluta: ")
            ruta = os.path.exists(directorio)
            dir = os.path.isdir(directorio)
            if ruta == True:
                if dir == True:
                    print("El directorio", directorio, "ya existe.")
                else:
                    print(directorio, " no es un directorio.")
            else:
                os.mkdir(directorio)
                print("El directorio", directorio, "ha sido creado.")
        case 4:
            print("Saliendo...")
            exit()
    if opc > 3 or opc < 0:
        print("Valor fuera de rango")
