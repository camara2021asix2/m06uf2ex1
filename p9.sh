#!/bin/bash
#CARLOS MACHO RAMOS

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 9
fi

clear
echo -n "Nom d'usuari: "
read user_name

if id -u "$user_name" >/dev/null 2>&1;
then 
	echo -n "User UID: "
	id -u $user_name
	exit 0
	
else 
	echo "ERROR: aquest usuari no existeix" 
	exit 1
fi
