#!/bin/bash

mkdir temps
mkdir_rc=$?

if [[ ${mkdir_rc} -eq 0 ]]; then
	echo "mkdie created the directory, so script ececuted"
	touch temps/tempfile.txt
	exit 0
fi

echo "mkdir command failed to create a diectory temps"
