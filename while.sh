#!/bin/bash

count=20
while [ "${count}" -gt 0 ] ; do
	echo "${count}"
	(( count-- ))
done
