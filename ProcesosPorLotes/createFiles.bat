@echo off
REM Ejemplos condicionales
REM
REM Autor: Nicolas Rubio Cuellar
REM Fecha: 15-11-2023

echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat
set /p opcion="Seleccione opcion 1 o 2: "
set /p nombreRuta="Escriba la ruta absoluta que quiere seguir " 
set /p nombreArchivo="Escriba un nombre para el archivo " 

if %opcion% == 1 goto txt 
if %opcion% == 2 goto bat

:txt
echo > %nombreRuta%\%nombreArchivo%.txt
exit

:bat 
echo > %nombreRuta%\%nombreArchivo%.bat
exit