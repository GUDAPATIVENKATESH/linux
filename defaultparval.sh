#!/bin/bash

###############################################
#Author: GUDAPATI VENKATESH
#Version: v1.0.0
#Date: 2022-03-31
#Description: This script demonstrates default values for positions parameters
#Usage: ./defaultparval.sh
###############################################

name=$1
course=$2

[ -z $name ] && name="VENKATESH"
[ -z $course ] && course="LINUX"

echo "Hello ${name}, Welcome to world of ${course}."
