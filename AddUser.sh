#!/bin/bash

ROOT_UID=0
SUCCESS=0
E_USEREXISTS=70

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "debes ser root..."
	exit
fi

read -p "Username: " username
read -s -p "Password: " pass

if [ $# -eq 2 ]
then
	grep -q "^$username" /etc/passwd
	if [ $? -eq $SUCCESS ]
	then
		echo "ese usuario $username ya existe"
		exit
	fi

	useradd -p $pass -d /home/$username -m "$username"
	echo "usuario creado correctamente!"
else
	echo "ingrese dos parametros"
	echo "example $0"
fi
exit
