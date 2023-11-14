@echo off
REM Media de 3 numeros con argumentos
REM
REM Autor: Nicolas Rubio Cuellar
REM Fecha: 14-11-2023

set /a suma=%1 + %2 + %3
set /a division=%suma%/3
echo La media de los valores es %division%