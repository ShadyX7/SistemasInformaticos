#  1.Pedir ruta por teclado
#  2.Comprobar que existe tal ruta
#  3.Pedir fichero por teclado
#  4.Comprobar si existe tal fichero
#  5.Pedir que permisos desea modificar de tal fichero
#  6.Pedir que permisos quiere en concreto para cada modificacion
#  7.Ejecutar el mismo proceso hasta que el usuario escriba SALIR/salir/EXIT/exit


while [ "$ruta" != "salir" ]

do
	echo Introduce la ruta que desee:
	echo
	read ruta

	if [ "$ruta" != "salir" ]

	then
		if [ -d $ruta ]
		then
			echo Introduce el fichero que desee:
			echo
			read fichero

				if [ -f $fichero ]
				then
					echo
					echo Va a utilizar permisos en este fichero. ¿Desea agregar o quitar permisos?
					echo Si desea añadir "(+)"
					echo Si desea quitar "(-)"
					read permisos
					echo
					echo Introduce los permisos que desee modificar:
					echo "Usuario(u), Grupo(g), Otros(o)"
					echo Puede combinar estos permisos "(ug,uo,go,ugo)"
					read modificar
					echo
					echo Introduce que permisos concretos quiere de estas modificaciones:
					echo "Lectura(r), Escritura(w), Ejecución(x)"
					echo Puede combinar estos permisos "(rw,rx,wx,rwx)"
					read Permisos_Concretos

						chmod $modificar$permisos$Permisos_Concretos $ruta/$fichero
						echo
						ls -l $ruta/$fichero
				else
				echo El fichero $fichero no existe
				fi
		else
		echo La ruta $ruta no existe
		fi
	fi
done
