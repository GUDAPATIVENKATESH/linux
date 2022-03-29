#!/bin/bash

if [[ $# -ne 3 ]]; then
	echo "incorrect number of arguments passed"
	echo "usage: ./sampleshell.sh <directory-name> <file-name> <file-content>"
	exit 1
fi
#variables
directory_name=$1
file_name=$2
file_content=$3

if [[ ! -d ${directory_name} ]]; then
	mkdir ${directory_name} || { echo "cannot create directory"; exit 1; }
fi

abs_file_path=${directory_name}/${file_name}

if [[ ! -f ${abs_file_path} ]]; then
	touch ${abs_file_path} || { echo "cannot ctreate a file"; exit 1; }
fi

echo ${file_content} > ${abs_file_path}
