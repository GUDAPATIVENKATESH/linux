#!/bin/bash

FILE=randomfile.txt

if [[ ! -f ${FILE} ]]; then
	echo "file mentione as ${FILE} does not exist"
	exit 1
else
	echo "printing the contents of the file"
	cat ${FILE}
fi
