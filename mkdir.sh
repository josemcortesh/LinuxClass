#!/bin/bash -x
if [ $# -eq 0 ]; then
	echo "mkdir: missing operand"
	exit -1
fi
y=$( echo ${1} | tr '[:upper:]' '[:lower:]' )
/bin/mkdir $y

