#!/bin/bash
#CARLOS MACHO RAMOS

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 9
fi

clear
echo -n "Nom del servei: "
read service

echo -n "Deshabilitem el servei $service ..."
systemctl disable $service
systemctl status $service


echo -n "Vols continuar? (SI = ""c"")"
read cth

if  [[  $cth  ==  "c"  ]]
then
    ( exec "./p3.sh" )
else
	
    exit 10
fi

