@echo off
echo El usuario ha iniciado el programa en la fecha %date% y hora %time% >>log.txt
echo. >>log.txt
echo Proyecto Navidad

:MenuPrincipal
cls
color 1F
title Proyecto
echo **************************************
echo ********** [MENU PRINCIPAL] **********
echo **************************************
echo.
echo El usuario ha entrado al menu principal en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
echo 1.- Utilidades del sistema.
echo.
echo 2.- Utilidades de ficheros.
echo.
echo 3.- Otras utilidades.
echo.
echo ______________________________________
echo 4.- Salir al Sistema Operativo.
echo --------------------------------------
echo.

echo Seleccione una opcion [1-4]:
set /p var=
if "%var%"=="1" goto UtilidadesDelSistema
if "%var%"=="2" goto UtilidadesDeFicheros
if "%var%"=="3" goto OtrasUtilidades
if "%var%"=="4" goto salir

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un valor nuevo (1-4).
echo.
pause
echo.
goto MenuPrincipal









:UtilidadesDelSistema
echo.
echo El usuario ha ejecutado la opcion 1 (Utilidades del sistema) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion 1 ( Utilidades del sistema )
echo.
echo.
pause 
cls
color 0E
echo **********************************************
echo ********** [UTILIDADES DEL SISTEMA] **********
echo **********************************************
echo.
echo.
echo A.- Visualizar la fecha, hora y extensiones.
echo.
echo B.- Ingresar URL.
echo.
echo C.- Ejecutar 3 aplicaciones del SO.
echo.
echo D.- Analizar problemas del disco duro.
echo.
echo E.- Volver al Menu principal.
echo.

echo Seleccione una opcion [A-E]:
set /p var=
if "%var%"=="A" goto Visualizar_la_fecha_hora_extensiones
if "%var%"=="B" goto Ingresar_URL
if "%var%"=="C" goto Ejecutar_3_aplicaciones_del_SO
if "%var%"=="D" goto Analizar_problemas_del_disco_duro
if "%var%"=="E" goto MenuPrincipal	
if "%var%"=="a" goto Visualizar_la_fecha_hora_extensiones
if "%var%"=="b" goto Ingresar_URL
if "%var%"=="c" goto Ejecutar_3_aplicaciones_del_SO
if "%var%"=="d" goto Analizar_problemas_del_disco_duro
if "%var%"=="e" goto MenuPrincipal

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (A-E).	
echo.
pause
echo.
goto UtilidadesDelSistema	




:Visualizar_la_fecha_hora_extensiones
echo.
echo El usuario ha ejecutado la opcion 1-A (Visualizar la fecha, hora y extensiones) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion A ( Visualizar la fecha, hora y extensiones )
echo.
echo.
pause 
cls
color 0E
echo ***********************************************
echo **** [FECHA, HORA Y EXTENSIONES DE SU S.O] ****
echo ***********************************************
echo.
echo.
pause
echo.
echo.
echo La fecha actual es: %date%
echo.
echo La hora actual es: %time%
echo.
echo Las extensiones de los archivos son: 
echo %PATHEXT%
echo.
echo.
pause>nul
echo.
goto UtilidadesDelSistema	




:Ingresar_URL
echo.
echo El usuario ha ejecutado la opcion 1-B (Ingresar URL) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion B ( Ingresar URL )
echo.
echo.
pause 
cls
color 0E
echo ************************************
echo ********** [INGRESAR URL] **********
echo ************************************
echo.
echo.
pause
echo.
echo.
echo Ingrese la URL deseada:
echo.
set /p url=
start http://%URL%
echo.
echo.
pause>nul
echo.
goto UtilidadesDelSistema	



:Ejecutar_3_aplicaciones_del_SO
echo.
echo El usuario ha ejecutado la opcion 1-C (Ejecutar 3 aplicaciones del SO) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion C ( Ejecutar 3 aplicaciones del SO )
echo.
echo.
pause 
cls
color 0E
echo **************************************
echo **** [ 3 APLICACIONES PARA LANZAR] ***
echo **************************************
echo.
echo.
echo 1.- Abrir "PAINT".
echo 2.- Abrir "Calculadora".
echo 3.- Abrir "Reproductor de Windows Media".
echo 4.- Volver a Utilidades del sistema.
echo.

echo Seleccione una opcion [1-4]:
set /p var=
if "%var%"=="1" start mspaint.exe
if "%var%"=="2" start calc
if "%var%"=="3" start wmplayer
if "%var%"=="4" goto UtilidadesDelSistema

pause
echo.
goto Ejecutar_3_aplicaciones_del_SO

:mspaint.exe
echo El usuario ha ejecutado la opcion 1-C-1 (Abrir "PAINT") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt

:calc
echo El usuario ha ejecutado la opcion 1-C-2 (Abrir "Calculadora") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt

:wmplayer
echo El usuario ha ejecutado la opcion 1-C-3 (Abrir "Reproductor de Windows Media") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt



:Analizar_problemas_del_disco_duro
echo.
echo El usuario ha ejecutado la opcion 1-D (Analizar problemas del disco duro) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion D ( Analizar problemas del disco duro )
echo.
echo.
pause 
cls
color 0E
echo **************************************
echo **** [ PROBLEMAS DEL DISCO DURO ] ****
echo **************************************
echo.
echo.
echo Se analizaran los problemas del disco duro.
pause
chkdsk c:
echo SE HA ANALIZADO EL DISCO DURO.
pause>nul
echo.
goto UtilidadesDelSistema












:UtilidadesDeFicheros
echo.
echo El usuario ha ejecutado la opcion 2 (Utilidades de ficheros) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion 2 ( Utilidades de ficheros )
echo.
echo.
pause
cls
color 0C
echo **********************************
echo **** [UTILIDADES DE FICHEROS] ****
echo **********************************
echo.
echo.
echo A.- Agregar/Quitar "solo lectura" de fichero.
echo.
echo B.- Visualizar contenido de fichero.
echo.
echo C.- Copiar fichero.
echo.
echo D.- Listar ficheros de su ruta especifica.
echo.
echo E.- Borrar ficheros de su ruta especifica.
echo.
echo F.- Mover ficheros ".doc" y  ".txt" a carpeta "TEMP".
echo.
echo G.- Volver al menu principal.
echo.

echo Seleccione una opcion [A-G]:
set /p var=
if "%var%"=="A" goto Solo_Lectura_Fichero
if "%var%"=="B" goto Contenido_fichero
if "%var%"=="C" goto Copiar_Ficheros
if "%var%"=="D" goto Lista_Ficheros
if "%var%"=="E" goto Borrar_Ficheros
if "%var%"=="F" goto Mover_Ficheros_TEMP
if "%var%"=="G" goto MenuPrincipal
if "%var%"=="a" goto Solo_Lectura_Fichero
if "%var%"=="b" goto Contenido_fichero
if "%var%"=="c" goto Copiar_Ficheros
if "%var%"=="d" goto Lista_Ficheros
if "%var%"=="e" goto Borrar_Ficheros
if "%var%"=="f" goto Mover_Ficheros_TEMP
if "%var%"=="g" goto MenuPrincipal	

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (A-G).	
echo.
pause
echo.
goto UtilidadesDeFicheros		
	

	
:Solo_Lectura_Fichero

echo.
echo El usuario ha ejecutado la opcion 2-A (Agregar/Quitar "solo lectura" de fichero) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion A ( Agregar/Quitar "solo lectura" de fichero )
echo.
echo.
pause 
cls
color 0C
echo ****************************************************************
echo *[ AGREGAR O QUITAR EL MODO "SOLO LECTURA" DE VUESTRO FICHERO ]*
echo ****************************************************************
echo.
echo.
@echo off

echo 1.- Ocultar
echo.
echo 2.- Desocultar
echo.
echo Elige opcion:
set /p opcion=
echo.
echo Elige directorio
set /p dir=
echo.
echo Elige fichero
set /p fich=

if %opcion%==1 goto ocultar

:desocultar
echo El usuario ha ejecutado la opcion 2-A-1 (desocultar) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
attrib +h %dir%\%fich%
echo ARCHIVO MOSTRADO
pause>nul
goto mostrar


:ocultar
echo El usuario ha ejecutado la opcion 2-A-2 (ocultar) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
attrib +h %dir%\%fich%
echo ARCHIVO OCULTADO
pause>nul

echo.
echo.
goto UtilidadesDeFicheros





:Contenido_fichero

echo.
echo El usuario ha ejecutado la opcion 2-B (Visualizar contenido de fichero) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion B ( Visualizar contenido de fichero )
echo.
echo.
pause 
cls
color 0C
echo ****************************************************
echo ***[ VISUALIZAR EL CONTENIDO DE VUESTRO FICHERO] ***
echo ****************************************************
echo.
echo.
@echo off
echo Elige directorio
set /p dir=
echo.
echo Elige fichero
set /p fich=
%dir%\%fich%
echo ARCHIVO MOSTRADO
echo.
echo.
pause>nul
echo.
goto UtilidadesDeFicheros

		
		
		

:Copiar_Ficheros

echo.
echo El usuario ha ejecutado la opcion 2-C (Copiar fichero) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion C ( Copiar fichero )
echo.
echo.
pause 
cls
color 0C
echo ************************************************************
echo *** [ COPIAR VUESTRO FICHERO DESDE LA RUTA ESPECIFICADA ]***
echo ************************************************************
echo.
echo.
@echo off
echo Elige el origen de vuestro fichero:
echo.
set /p diro=
echo.
echo.
echo Elige el fichero que desea copiar:
echo.
set /p fich=
echo.
echo.
echo Elige el destino de vuestro fichero:
echo.
set /p dird=

copy %diro%\%fich% %dird%\%fich%

echo ARCHIVO COPIADO
echo.
echo.
pause>nul
echo.
goto UtilidadesDeFicheros





:Lista_Ficheros

echo.
echo El usuario ha ejecutado la opcion 2-D (Listar ficheros de su ruta especifica) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion D ( Listar ficheros de su ruta especifica )
echo.
echo.
pause 
cls
color 0C
echo *****************************************************
echo ***** [ LISTAR FICHEROS DE SU RUTA ESPECIFICA ] *****
echo *****************************************************
echo.
echo.
@echo off
echo.
echo Elige una de estas dos opciones:
echo.
echo 1.- Mostrar todos los ficheros del directorio
echo.
echo 2.- Mostrar archivos que contengan el parametro "fich"
echo.
echo 3.- Volver a Utilidades de ficheros
echo.
echo Seleccione una opcion [1-3]:
set /p var=
if "%var%"=="1" goto ficheros_todos
if "%var%"=="2" goto fichero_patron
if "%var%"=="3" goto UtilidadesDeFicheros

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (1-3).	
echo.
pause
goto Lista_Ficheros

:ficheros_todos
echo El usuario ha ejecutado la opcion 2-D-1 (Mostrar todos los ficheros del directorio) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
echo Selecciona el directorio donde se encuentran los ficheros:
set /p diro=
DIR %diro%
echo FICHEROS MOSTRADOS

:fichero_patron
echo El usuario ha ejecutado la opcion 2-D-2 (Mostrar archivos que contengan el parametro "fich") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
echo Selecciona el directorio donde se encuentran los ficheros con patron "fich":
set /p diro=
DIR %diro%\*fich*
echo FICHEROS MOSTRADOS

echo.
echo.
pause>nul
echo.
goto UtilidadesDeFicheros




	
:Borrar_Ficheros

echo.
echo El usuario ha ejecutado la opcion 2-E (Borrar ficheros de su ruta especifica) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion E ( Borrar ficheros de su ruta especifica )
echo.
echo.
pause 
cls
color 0C
echo ***************************************************
echo **** [ BORRAR FICHEROS DE SU RUTA ESPECIFICA ] ****
echo ***************************************************
echo.
echo.
@echo off
echo.
echo Elige una de estas dos opciones:
echo.
echo A.- Borrar todos los ficheros del directorio
echo.
echo B.- Borrar archivos que contengan el parametro "fich"
echo.
echo C.- Volver a Utilidades de ficheros
echo.
echo Seleccione una opcion [A-C]:
set /p var=
if "%var%"=="A" goto bficheros_todos
if "%var%"=="B" goto bfichero_patron
if "%var%"=="a" goto bficheros_todos
if "%var%"=="b" goto bfichero_patron
if "%var%"=="C" goto UtilidadesDeFicheros
if "%var%"=="c" goto UtilidadesDeFicheros

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (A-C).	
echo.
pause
goto Borrar_Ficheros

:bficheros_todos
echo El usuario ha ejecutado la opcion 2-E-A (Borrar todos los ficheros del directorio) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
echo Selecciona el directorio donde se encuentran los ficheros que desea eliminar:
set /p diro=
DEL %diro%
echo FICHEROS BORRADOS

:bfichero_patron
echo El usuario ha ejecutado la opcion 2-E-B (Borrar archivos que contengan el parametro "fich") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
echo Selecciona el directorio donde se encuentran los ficheros con patron "fich" que desea eliminar:
set /p diro=
DEL %diro%\*fich*
echo FICHEROS BORRADOS

echo.
echo.
pause>nul
echo.
goto UtilidadesDeFicheros

	
	
	
	
:Mover_Ficheros_TEMP

echo.
echo El usuario ha ejecutado la opcion 2-F (Mover ficheros ".doc" y  ".txt" a carpeta "TEMP") en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion F ( Mover ficheros ".doc" y  ".txt" a carpeta "TEMP" )
echo.
echo.
pause 
cls
color 0C
echo **********************************************************************
echo * [ MOVER LOS FICHEROS CON EXTENSIONES INDICADA A LA CARPETA "TEMP" ]*
echo **********************************************************************
echo.
echo.
@echo off
mkdir TEMP

echo Mover todos los ficheros ".doc" y ".txt" a carpeta "TEMP" desde su ruta:? [S/N]
set /p var=
if "%var%"=="S" goto Mover_Temp
if "%var%"=="s" goto Mover_Temp
if "%var%"=="N" goto UtilidadesDeFicheros
if "%var%"=="n" goto UtilidadesDeFicheros

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (S/N).	
echo.
pause
goto Mover_Ficheros_TEMP

:Mover_Temp
echo El usuario ha ejecutado la opcion 2-F-S (Mover todos los ficheros ".doc" y ".txt" a carpeta "TEMP" desde su ruta) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo Elige el origen de los ficheros que quereis mover:
echo.
set /p diro=

move %diro%\*.txt TEMP
move %diro%\*.doc TEMP

echo.
echo ARCHIVOS MOVIDOS
echo.
echo.
pause>nul
echo.
goto UtilidadesDeFicheros

	
	
	

	
	
	
	
	
	
	
	
	
	

:OtrasUtilidades
echo.
echo El usuario ha ejecutado la opcion 3 (Otras Utilidades) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion 3 ( Otras utilidades )
echo.
::Aqui van las lineas de comando de tu opcion
echo.
pause
cls
color 0A
echo ****************************************
echo ********** [OTRAS UTILIDADES] **********
echo ****************************************
echo.
echo.
echo A.- Ingresar dos numeros y resolver su potencia.
echo.
echo B.- Crear archivos vacios sin extension con nombre especifico.
echo.
echo C.- Calcular area de triangulos.
echo.
echo D.- Mostrar cuantos pares e impares hay en su lista de numeros.
echo.
echo E.- Ingresar numeros positivos e indicar cual es mayor.
echo.
echo F.- Volver al Menu principal.
echo.

echo Seleccione una opcion [A-F]:
set /p var=
if "%var%"=="A" goto Ingresar_2num_Potencia
if "%var%"=="B" goto Archivos_vacios_nombre
if "%var%"=="C" goto Area_triangulos
if "%var%"=="D" goto Pares_impares_lista
if "%var%"=="E" goto Numeros_positivos_Nmayor
if "%var%"=="F" goto MenuPrincipal
if "%var%"=="a" goto Ingresar_2num_Potencia
if "%var%"=="b" goto Archivos_vacios_nombre
if "%var%"=="c" goto Area_triangulos
if "%var%"=="d" goto Pares_impares_lista
if "%var%"=="e" goto Numeros_positivos_Nmayor
if "%var%"=="f" goto MenuPrincipal

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (A-F).	
echo.
pause
echo.
goto OtrasUtilidades	

    
	
:Ingresar_2num_Potencia

echo.
echo El usuario ha ejecutado la opcion 3-A (Ingresar dos numeros y resolver su potencia) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion A ( Ingresar dos numeros y resolver su potencia )
echo.
echo.
pause 
cls
color 0A
echo ***************************************************
echo ** [ INGRESE DOS NUMEROS Y RESUELVA SU POTENCIA ]**
echo ***************************************************
echo.
echo.

@echo off

echo Quiere realizar la potencia de dos numeros? [S/N]
set /p var=
if "%var%"=="S" goto codigo
if "%var%"=="s" goto codigo
if "%var%"=="N" goto OtrasUtilidades
if "%var%"=="n" goto OtrasUtilidades

::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%var%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (S/N).	
echo.
pause
goto Ingresar_2num_Potencia

:: pow(a, b) = a * a ...*a...*a.., multiplicado por el numero de veces de b.
:codigo
echo El usuario ha ejecutado la opcion 3-A-S (realizar la potencia de dos numeros) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo.
set /p "base=Base 
if not defined base (goto:codigo)
echo.
:_codigo:
echo.
set /p "potencia=Potencia 
if not defined potencia (goto:_codigo)
echo.
set /a "producto=1"
for /l %%_ in (1, 1, %potencia%) do (
set /a "producto*=base"
)
echo.
echo.
echo El resultado de la potencia de ambos numeros es %producto%
pause>nul
echo.
goto OtrasUtilidades



	
:Archivos_vacios_nombre

echo.
echo El usuario ha ejecutado la opcion 3-B (Crear archivos vacios sin extension con nombre especifico) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion B ( Crear archivos vacios sin extension con nombre especifico )
echo.
echo.
pause 
cls
color 0A
echo ***************************************************************************
echo ** [ A PARTIR DE UN NOMBRE DE ARCHIVO Y UN NUMERO, CREAR ARCHIVOS VACIOS CON    MISMO NOMBRE Y FINALIZANDO SUS FICHEROS CON MISMOS NUMEROS, SIN EXTENSION ]**
echo ***************************************************************************
echo.
echo.

echo Indique el nombre de los ficheros que quiere crear:
echo.
set/p nom=
echo Nombre %nom%, %date%, %time%.>>log.txt
echo.
echo Cuantas veces quieres duplicarlo?
set/p num=
echo veces %num%, %date%, %time%.>>log.txt
set contador=0
set fichero=

:inicio_archivo
set/a contador = contador+1
set fichero=%nom%%contador% 
mkdir %fichero%
if %contador%==%num% (goto fin_archivo) else (goto inicio_archivo)
pause>nul
echo.
goto OtrasUtilidades

:fin_archivo
echo.
echo SE HAN CREADO LOS FICHEROS!
echo.
echo.
pause>nul
echo.
goto OtrasUtilidades



		

:Area_triangulos

echo.
echo El usuario ha ejecutado la opcion 3-C (Calcular area de triangulos) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion C ( Calcular area de triangulos )
echo.
echo.
pause 
cls
color 0A
echo *****************************************
echo *** [ CALCULE AREA DE SUS TRIANGULOS ]***
echo *****************************************
echo.
echo.
SETLOCAL ENABLEDELAYEDEXPANSION
echo De cuantos triangulos quieres encontrar el area?
set /p numf=
echo.
for /l %%i in (1, 1, %numf%) do (set /p base=Dame la base del triangulo:
if !base! GTR 10 (goto error_base) 
echo. 
set /p altura=Dame la altura del triangulo:
if !altura! GTR 10 (goto error_altura) 
echo.
set entre=2
set /a area=base*altura
set /a area2=area/2
echo EL RESULTADO DE EL AREA DE ESTE TRIANGULO ES:!area2!
)
echo.
pause>nul
echo.
goto OtrasUtilidades

:error_base
echo.
::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%base%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (menor que 10).	
echo.
pause
goto OtrasUtilidades

:error_altura
echo.
::Aviso de error!, Accion cuando el usuario selecciona una opcion incorrecta
echo. El valor "%altura%" no es una opcion adecuada, por favor vuelva a ingresar un nuevo valor  (menor que 10).	
echo.
pause
goto OtrasUtilidades

echo.
echo.
pause>nul
echo.
goto OtrasUtilidades


	
	
:Pares_impares_lista

echo.
echo El usuario ha ejecutado la opcion 3-D (Mostrar cuantos pares e impares hay en su lista de numeros) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion D ( Mostrar cuantos pares e impares hay en su lista de numeros )
echo.
echo.
pause 
cls
color 0A
echo *************************************************************************
echo *** [ MOSTRAR CUANTOS PARES E IMPARES HAY EN VUESTROS NUMEROS ENTEROS]***
echo *************************************************************************
echo.
echo.
SETLOCAL ENABLEDELAYEDEXPANSION
set resultadopar=0
set resultadoimpar=0

echo De cuantos numeros quieres saber si son pares e impares?
set /p num=
echo.
for /l %%i in (1, 1, %num%) do (
set /p resul=%%i. Introduzca el numero del cual desea saber si es par o impar:
echo.
set /a resul=resul%%2
if !resul!==1 (set /a resultadoimpar=resultadoimpar +1) else (set /a resultadopar=resultadopar +1)
)
echo.
echo.
echo HAY %resultadopar% NUMEROS PARES ENTRE TODOS.
echo.
echo.
echo HAY %resultadoimpar% NUMEROS IMPARES ENTRE TODOS.
echo.
pause>nul
echo.
goto OtrasUtilidades




:Numeros_positivos_Nmayor

echo.
echo El usuario ha ejecutado la opcion 3-E (Ingresar numeros positivos e indicar cual es mayor) en la fecha %date% a las horas %time% >>log.txt
echo. >>log.txt
echo. Has elegido la opcion E ( Ingresar numeros positivos e indicar cual es mayor )
echo.
echo.
pause 
cls
color 0A
echo ************************************************************************
echo *** [ MOSTRAR CUAL ES EL NUMERO POSITIVO MAYOR DE LOS PROPORCIONADOS]***
echo ************************************************************************
echo.
echo.

:numero_mayor
echo.
set mayor1=0
echo De cuantos numeros totales quiere saber el numero mayor?
echo.
set /p var=

:int_numero
echo.
echo Introducir numeros:
set /p numeroint= 
if %mayor1% GTR %numeroint% (goto num_siguiente) else (goto id_numero)

:id_numero
set /a mayor1= %numeroint% * 1

:num_siguiente
set /a var= %var% -1

if %var%==0 (goto var_final) else (goto int_numero)

:var_final
echo.
echo El numero mayor de todos los introducidos es el: %mayor1%
echo.
echo.
pause>nul
echo.
goto OtrasUtilidades




:salir
echo El usuario ha salido del programa en la fecha %date% y hora %time% >>log.txt
echo. >>log.txt
    @cls&exit	

	
