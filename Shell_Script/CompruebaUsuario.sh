#read -p "Introduce usuario: " user

#if `grep -e "^$user:.*" /etc/passwd >/dev/null`

#then
#echo Usuario existe en el sistema.

#else
#echo Usuario no existe en el sistema.

#fi

for lineas in $(cat /etc/passwd)
do

nombre=cut -d ":" -f 1 lineas
uid=cut -d ":" -f 3 lineas

if [uid -ge 1000]
echo NO es un usuario del sistema
else
echo Es un usuario del sistema
fi
done

