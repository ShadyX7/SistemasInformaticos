
#Crea dos ficheros vacíos (f1,f2)
#listado /var
#50 % del listado de (f1,f2)

touch f1
touch f2
ls -l /var > temporal
wc -l temporal > nlineas
lineas=`cut -d " " -f 1 nlineas`
lineas=lineas - 1
tail $lineas temporal > temp
res=`expr ((50 \* $nlineas) / 100)`

head -$res temp > f1
res=$lineas - $res
tail -$res temp > f2

rm temp 
echo 
echo "Creado con exito"

