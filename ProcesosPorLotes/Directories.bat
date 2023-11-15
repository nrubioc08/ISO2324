@echo off
REM Crear un menu con 5 opciones
REM 
REM Autor:Nicolas Rubio Cuellar
REM Fecha:15-11-2023

echo 1-Crear fichero con nombre pedido al usuario
echo 2-Mostrar el árbol de directorios de la carpeta de usuario
echo 3-Mostrar archivos con extension .txt
echo 4-Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5-Copia el contenido de tu carpeta de usuario al Escritorio

set /p opcion="Seleccione el numero de la opcion que quiere "

if %opcion%==1 goto Opcion1
if %opcion%==2 goto Opcion2
if %opcion%==3 goto Opcion3
if %opcion%==4 goto Opcion4
if %opcion%==5 goto Opcion5

:Opcion1
set /p nombreFichero="Escriba el nombre del fichero "
mkdir %nombreFichero%
exit

:Opcion2
@echo on
tree %USERPROFILE%
pause
exit

:Opcion3
dir *.txt
pause
exit

:Opcion4
mkdir alfredoff marinapg ramonam
exit

:Opcion5
xcopy %USERPROFILE% C:\Copia /E
exit