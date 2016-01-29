#if [ -f $1 ]
#echo Fichero Existe
#else
#echo Fichero NO existe
#fi
#done

numero="$*"

for fich in $numero

do

ls > temporal
archivo=0
archivo=`grep -c $fich temporal`

if [ $archivo = 0 ]
then
echo El archivo $fich no existe.
else
echo El archivo $fich existe.

fi 
done

rm temporal
