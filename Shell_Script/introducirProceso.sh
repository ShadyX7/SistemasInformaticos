echo "Introduzca nombre proceso"
read proceso
ps -a > lista_procesos
cat lista_procesos
grep $proceso lista_procesos > kill_process
n.proceso =  grep -c $proceso kill_process
if (n.proceso -eq o)
then
echo "NO EXISTE EL PROCESO"
else
