#!/usr/bin/env bash

user=$( grep ${1} /etc/passwd | cut -d ':' -f 1 )
#echo $user
if [ "" = "${user}"  ]; then
	echo "${1} no existe en el sistema"
else
	echo "${1} existe en el sistema"
fi
