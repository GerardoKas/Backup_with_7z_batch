@echo off
cls

set DIRS= "D:\" "C:\Lyrics"

REM set NAMES="\.PL$ \.json$ \.TXT$ \.PDF$"

set FTODO=.\archivos_dir_todo.lst
set FELIMINA=.\archivos_sin_exdirs.lst
set FOK=.\archivos_correctos_para_comprimir.lst

title Prueba de Backup
cls

if exist %FTODO% del  %FTODO%
if exist %FELIMINA% del  %FELIMINA%
if exist %FOK% del  %FOK%

REM BUSCA LAS DIR OCINCIDENTES
echo Buscando Dirs %DIRS%
for %%I in (%DIRS%) do dir /b/s %%I>>%FTODO% 

REM ELIMINA DIRECTORIOS
echo Eliminando No Dirs
findstr /V /L /I /g:aBuscaNoDirs.txt %FTODO% >%FELIMINA% 

REM ELIMINA LOS EXNAME QUE NO SON 
echo Eliminando ficheros NO 

findstr /V /I /g:aBuscaNoFiles.txt %FELIMINA% > %FOK%

REm BUSCA CoiNCIDENCIAS - o lo un o olo otro - sifiles o nofiles
REM COREREREGIR - FALTA

REM MENSAJE DE AYUDA
echo Listado del archivo correcto
dir %FOK%

del  %FTODO%
del  %FELIMINA%
goto END

 

:END
echo Bye
pause
