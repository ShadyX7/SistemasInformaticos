resul=`pwd`
echo La ruta de destino del archivo esta en: $resul
mi_nombre=victor
echo Mi nombre es: $mi_nombre
echo THE REAL SLIM SHADY 
echo
echo Shady.
echo
echo Hola soy $1, vivo en $2 y este fichero es $0 y 
echo $*  y tambien $#
echo -n Introduce nombre:
read nombre 
echo Tu nombre es: $nombre
echo
resultado=`expr 9 + 4`
echo $resultado
echo
echo Devuelve 0 o 1?
resultado2=`expr 8 \> 4`
echo $resultado2
