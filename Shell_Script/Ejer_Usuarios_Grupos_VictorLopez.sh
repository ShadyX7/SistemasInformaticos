case $1 in

	alta)

	case $2 in

		usuario)

		echo "Dar de alta un usuario"
		echo "Inserta el nombre del usuario: "
		read user
		echo "Para utilizar un grupo personalizado pulse 0, sino pulse cualquier letra"
		read numpersonalizado
			if [ $numpersonalizado -eq 0 ]
				then
				echo "Inserta el nombre del grupo: "
				read grupo
				adduser $user --ingroup $grupo
					else
					adduser $user
			fi
			;;


		grupo)

		echo "Dar de alta a un grupo"
		echo "Inserta el nombre del grupo: "
		read grupo1
		addgroup $grupo1
		;;

	esac
	;;



	baja)

	case $2 in

		usuario)

		echo "Dar de baja a un usuario"
		echo "Inserta el nombre del usuario: "
		read nombre
		deluser $nombre
		;;


		grupo)

		echo "Dar de baja a un grupo"
		echo "Inserta el nombre del grupo: "
		read grupo2
		delgroup $grupo2
		;;

	esac
	;;



	modificacion)

	case $2 in

		usuario)

		echo "Cambiar grupo del usuario seleccionado"
		echo -n "Inserta el nombre del usuario que quieres modificar: "
		read nombre1
		echo "Inserte el nombre de nuevo grupo que desea: "
		read grupo2
		usermod -g $grupo2 $nombre1
		;;


		grupo)

		echo " Cambiar el nombre del grupo que desea "
		echo -n "Inserta el nombre del grupo que desea modificar: "
		read grupoviejo
		echo "Inserta el nuevo nombre para este grupo: "
		read gruponuevo
		groupmod -n $gruponuevo $grupoviejo
		;;

	esac
	;;



	restriccion)

	case $2 in

		usuario)

		echo "Introduzca el nombre de usuario el cual quiere personalizar: "
		read nombreusu
		echo "Elija el tipo de restriccion (soft/hard): "
		read limitacion
		echo "Introduzca el numero de veces que un usuario se puede logear como maximo"
		read max
		echo "$nombreusu	 $limitacion    maxlogins	 $max" >> /etc/security/limits.conf
		;;


		grupo)

		echo "Introduzca el nombre de grupo el cual quiere personalizar: "
		read nombregrup
		echo "Elija el tipo de restriccion (soft/hard): "
		read limitacion
		echo "Introduzca el numero de veces que un usuario del grupo se puede logear como maximo: "
		read max
		echo "@$nombregrup         $limitacion    maxlogins        $max" >> /etc/security/limits.conf
		;;


	esac
	;;

esac
