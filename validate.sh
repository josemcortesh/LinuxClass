#!/usr/bin/env bash
if [ "" = "${1}" ]; then
	>&2 echo "${0} Missing argument"
	exit -1
fi

#ls ${1} > /dev/null
#if [ $? -eq 0 ]; then
#	echo "${1} existe"
#else
# 	echo "${1} no existe"
#fi

## Comparacion que valida si un archivo existe
: ' if [ -a ${1} ]; then
	echo "${1} existe"
else
	echo "${1} no existe"
fi'

## Comparacion que valida que el argumento no es un directorio y es ejecutable
if [[ -x ${1} && ! -d ${1} ]]; then
#if [ -x ${1}] && [ -d ${1} ]; then
#if [ -x ${1} -a ! -d ${1} ]; then
	echo "${1} es ejecutable y no es directorio"
elif [ -d ${1} ]; then
	echo "${1} es un directorio"
else
	echo "${1} es otra cosa"
fi
