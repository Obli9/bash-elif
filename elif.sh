#!/bin/bash


function adult {

echo -e "1) lscpu\n2) crontab -l\n3) fastfetch\n4) cmatrix\n"
}

function child {

echo -e "1) w\n2) whoami\n3) date\n4) cowsay \n"
}


declare name
declare -i age
declare -i choice


echo -e "What is your name?:\c \a"

read name

echo "Your name is $name!"

#elif starts here

echo ""

if [ "$name" = "$USER" ]; 
then
	echo "Welcome $name."
	echo ""
	echo "What is your age?"
	read age
	echo -e "Here's what you can access.\n"

	if [ $age -ge 18 ];
	then
		adult
		echo -e "Please choose (1,2,3,4):\c"
		read choice
		case $choice in
		1)
			lscpu
		;;
		2)
			crontab -l
		;;
		3)
			fastfetch
		;;
		4)
			cmatrix
		;;
		*)
			echo -e "Invalid choice!\a"
		;;
		esac

		else
			child
			echo -e "Please choose (1,2,3,4):\c"
			read choice
			case $choice in
			1)
				w
			;;
			2)
				whoami
			;;
			3)
				date
			;;
			4)
				cowsay "{{hello, world}}"
			;;
			*)
				echo -e "Invalid choice!\a"
			;;
		esac

	fi
else
	echo "You are not permitted to use this software."

fi



exit

