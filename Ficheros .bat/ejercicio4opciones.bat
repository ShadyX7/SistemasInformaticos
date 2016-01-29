@echo off

title Calculadora
echo Calculadora 4 opciones

:menu

echo 1.- Suma
echo 2.- Resta
echo 3.- Multiplicacion
echo 4.- Division
set /p op= Que desea hacer?


echo Escriba numero
set /p num1= Introduzca el 1er valor
:denominador
echo Escriba otro numero 
set /p num2=Introduzca el 2do valor

if %op%==1 (goto suma)
if %op%==2 (goto resta)
if %op%==3 (goto multiplicacion)
if %op%==4 (goto division)


:suma
set /a resultado=%num1%+%num2%
echo La suma de %num1% y %num2% es: %resultado%
echo.
goto :orden

:resta
set /a resultado=%num1%-%num2%
echo La resta entre %num1% y %num2% es: %resultado%
echo.
goto :orden

:multiplicacion
set /a resultado=%num1%*%num2%
echo La multiplicacion entre %num1% y %num2% es: %resultado%
echo.
goto :orden

:division 
if %num2% == 0 (goto error)
set /a resultado=%num1%/%num2%
echo La division entre %num1% y %num2% es: %resultado%
echo.
goto :orden

:error
echo EL NUM2 TIENE QUE SER DISTINTO DE CERO
goto denominador

:orden
set /p otra= Desea volver a realizar otra operacion? ( S/N)
if %otra%==S (goto menu) else (goto fin)

:fin
echo FIN DEL PROGRAMA
pause>nul
exit