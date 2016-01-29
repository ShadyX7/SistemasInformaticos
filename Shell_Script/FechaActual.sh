#Recoger fecha, Recoger hora, Actualizar fecha/hora, MOSTRARLO 

echo "Introduce la fecha que desea (mm/dd/aaaa):"
read fecha
date -s $fecha
echo "Introduce la hora que desea (hh/mm):"
read hora
date -s $hora
echo
echo La fecha actual es:
echo $fecha
echo
echo La hora actual es:
echo $hora

