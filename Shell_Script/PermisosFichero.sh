#Pedir por teclaso y mostrar mensaje: "El fichero x tiene como permisos
#de propietario rwx, como permisos de grupo rwx y como permisos de otros rwx.
echo Introduce una ruta
read ruta
ls -l $ruta > temp
OLDIFS=$IFS
IFS=$(echo "\n")
for lineas in $(cat temp)
do 
echo $lineas > flineas
carac=cut -c 1 flineas
if [$carac="-"]
then
prop=cut -c 2-4 flineas
gr=cut -c 5-7 flineas
ot=cut -c 8-10 flineas
cut -d ":" -f2 flineas > flineas2

fi
done

