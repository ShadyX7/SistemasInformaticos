#touch listado
#echo Listado de ficheros de /var > listado

#ls /var >> listado

#echo Listado de ficheros ocultos de /bin >> listado

#ls -a /bin >> listado 

#echo Mostrar el contenido 

#cat listado

touch listado2
echo Listado de ficheros de la ruta especifica > listado2

echo Introduzca la ruta especifica de los fichero que quiere mostrar:
read ruta1
ls $ruta1 >> listado2

echo Listado de ficheros ocultos de la ruta especifica >> listado2

echo Introduzca la ruta especifica
echo de los ficheros ocultos que quiere mostrar: 
read ruta2
ls -a $ruta2 >> listado2

echo Mostrar el contenido 

cat listado2
 

