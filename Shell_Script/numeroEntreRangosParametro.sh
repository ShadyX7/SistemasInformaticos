for var in  $*

do

if [ $var -ge 0 ] && [ $var -le 33 ]
then
echo $var esta entre 0 y 33.

elif [ $var -ge 34 ] && [ $var -le 70 ]
then
echo $var esta entre 34 y 70.

elif [ $var -ge 71 ] && [ $var -le 100 ]
then
echo $var esta entre 71 y 100.

else 
echo ERROR

fi

done




