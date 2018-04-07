#!/usr/bin/env bash
user=$( who | grep ${1} | cut -d ' ' -f 1 ) 
if [ "" = "${user}" ]; then
	echo "${1} no esta conectado"
else
	echo "${1} esta conectado"
fi
