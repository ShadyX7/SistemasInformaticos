@echo off
:ini
set b=
set /p num=Numero Positivo y Entero: 
cls
set /a num*=1
if %num% lss 0 goto ini

set d=%num%

:binario
set /a mod=%d% %% 2
echo mod:%mod%
set /a d/=2
echo d:%d%
set b=%mod%%b%
echo b:%b%
if not %d%==0 goto binario

echo ... %b%
goto ini
