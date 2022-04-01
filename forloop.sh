#!/bin/bash

#printing multiple things
echo "DevOps"
echo "AWS"
echo "Azure"
echo "Linux"
echo "Windows"

echo "Now using for loop"

# with for loop

for course in DevOps AWS Azure Linux Windows ; do
	echo "${course}"
done
