contador=0
while (true)
do
 echo "Fecha y hora:" >> log.txt
        date +%T%t%d/%m/%y >> log.txt
        who | cut -d " " -f1 >> log.txt 
sleep 10s
done
