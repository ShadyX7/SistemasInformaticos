echo "Introduzca  el nombre de la carpeta"
read nombre
echo "Introduzca ruta donde se deseqa crear la carpet"
read ruta

mkdir $ruta/$nombre

valor=5
x=1
while [ $valor -ne 0 ]
do
   echo "hola mundo" >  $ruta/$nombre/fichero$x
	echo $x
     let x++
      valor=`expr $valor - 1`
done


