OLDIFS=$IFS
IFS=$(echo "\n")
for lineas in $(cat /etc/passwd)
do
echo $lineas
done
IFS=$OLDIFS
