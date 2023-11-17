@echo off
REM Comprobación de la existencia de un archivo
REM 
REM Autor: Nicolas Rubio Cuellar
REM Fecha: 17-11-2023

:inicio
set /p nombreArchivo="Escriba del nombre del archivo "
if exist %nombreArchivo% (goto existe) else (echo > %nombreArchivo%)
exit

:existe 
echo Ese archivo ya existe.
goto inicio
exit