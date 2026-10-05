#!/bin/bash


declare name
declare -i age

echo -e "What is your name?:\c \a"

read name

echo "Your name is $name!"

#elif starts here

echo ""

if [ $name = $USER ]; 
then
	echo "Welcome $name."
	echo -e \n
	echo "What is your age?"
	read age
	echo Here's what you can access.

	elif [ $age -lt 18 ]:
	then
		adult
		case 

	else
	echo "You are not permitted to use this software."

fi



function adult{

echo -e "1) sudo\n
	2) crontab -l\n
	3) fastfetch\n
	4) find\n"
}

function child{

echo -e "1) w\n
	2) whoami\n
	3) date\n
	4) man\n"
}

exit

