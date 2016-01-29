echo "Introduce el número que desees: "
read numero

dividido=`echo $numero | wc -c`
 
dividido=`expr $dividido - 1`




if [ $dividido -eq 3 ]
		then
		parte1=`echo $numero | cut -c1`
		
		parte2=`echo $numero | cut -c3`
		
		if [ $parte1 -eq $parte2 ]
		then
			echo "Este número es capicua."
		else	
			echo "Este número no es capicua."
		fi
fi
	


	if [ $dividido -eq 4 ]
		then
		parte1=`echo $numero | cut -c1`
		
		parte2=`echo $numero | cut -c4`
		
		parte3=`echo $numero | cut -c2`
		
		parte4=`echo $numero | cut -c3`
		

		if [ $parte1 -eq $parte2 ]
		then
			if [ $parte3 -eq $parte4 ]
			then
				echo "Este número es capicua."
			else	
				echo "Este número no es capicua."
			fi
			
		else	
			echo "Este número no es capicua."
		fi
	fi

	if [ $dividido -eq 5 ]
		then

		parte1=`echo $numero | cut -c1`
		
		parte2=`echo $numero | cut -c5`
		
		parte3=`echo $numero | cut -c2`
		
		parte4=`echo $numero | cut -c4`

		if [ $parte1 -eq $parte2 ]
		then
			if [ $parte3 -eq $parte4 ]
			then
				echo "Este número es capicua."
			else	
				echo "Este número no es capicua."
			fi
			
		else	
			echo "Este número no es capicua."
		fi
		fi
	


    
