#!/bin/bash

file_name=$1

if [[ -z ${file_name} ]]; then
	echo "incorrect usage: ./ifthenelsedemo.sh <filename>"
	exit 1
fi

if [[ ! -f ${file_name} ]]; then
	echo "please correct the file path and re-execute."
	exit 1
else
	echo "contents of the file are"
	cat ${file_name}
fi
