#!/bin/bash
#CARLOS MACHO RAMOS

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 9
fi

regex='^[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+.[A-Za-z]{2,63}$'

clear
echo -n "Adreça de correu electrónic: "
read email


if [[ $email =~ $regex ]] 
then
    echo "Email address valid."
    touch /etc/blackmail.list
	echo $email > /etc/blackmail.list
else
    echo "Email address incorrect."
    exit 5
fi
