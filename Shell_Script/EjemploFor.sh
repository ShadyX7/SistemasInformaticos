

#for var in `seq 10 -1 1`

#do

#echo $var

#done



#ini=10
#fin=20
#for var in `seq $ini $fin`

#do

#echo $var

#done




#for var in `seq 1 2 20`

#do

#echo $var

#done


#numero="10 20 30"
#for var in $numero

#do

#x=`expr $var + 20`
#echo $x

#done


for linea in $(cat PruebaFor.sh)
do
echo $linea
done
