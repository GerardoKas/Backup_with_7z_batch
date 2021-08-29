@echo off
set FILES=archivos_correctos_para_comprimir.lst
set ZIP=d:\COMPRIMIDO.zip

set PATH=%PATH%;"C:\Program Files\7-Zip"

title Zipeando
type %FILES% 
echo.
echo ESosson los archivso que se van a comprimir
set /P PREGINTA = Estas preparado Para Comprimir?


7z a -scs1252 -spf2 %ZIP% @%FILES%