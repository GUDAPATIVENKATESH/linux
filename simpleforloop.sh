#!/bin/bash

echo "Directory path entered by user is /c/Users/gudap/Videos/linux\practice/*"

for path in "/c/Users/gudap/Videos/linux\practice/*"; do
	echo "processing ${path}"
	if [ -d "$path" ]; then
		echo "${path} is directory"
	elif [ -f "${path}" ]; then
		echo "${path} is file"
	fi
done
