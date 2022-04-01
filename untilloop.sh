#!/bin/bash

count=10

until (( "${count}" < 0 )) ; do
	echo "${count}"
	(( count-- ))
done
