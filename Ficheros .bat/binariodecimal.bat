@Echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cls
:Main
echo.
set /p nn=Escriba un numero binario:
set /a valor = 1
set /a decimal = 0
set /a resto = 0
set /a total=0
set /a binario = %nn%

:Calculo
set /a resto = !nn! %% 10
set /a nn = !nn! / 10

::proceso

for /L %%j in (1, 1, !total!) do (set /a valor = !valor! *2)

::contador va realizando depuracion del numero 

set/a total= total + 1
if !resto!==1 set /a decimal = !decimal! + !valor! 
set /a valor =1

if !nn! GTR 0 goto :Calculo

:Result
echo.
Echo El numero %binario% en decimal es !decimal!

:otra
echo.
set /p otra=¿Desea volver a realizar otra operacion? (S/N)
if %otra%==S (goto Main) 
if %otra%==s (goto Main) 
if %otra%==N (goto final) 
if %otra%==n (goto final) 

:final
exit

