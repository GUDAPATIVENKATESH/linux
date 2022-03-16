#!/bin/bash

###############################################################################
#AUTHER:VENKATESH GUDAPATI
#DATE:16-03-2022
#DESCRIPTION:PRACTICESING LINUX SESSION 28(31/AUGUST/2020)
#CONCEPT:ERROR CHECKING, ERROR HANDLING AND ERROR PREVENTION
###############################################################################

#Run a command which always work
mktemp
#storing the exit code of mktemp
mktemp_ec=$?

#run a command always fail
mkdir /home/ubuntu
mkdir_ec=$?

echo "mktemp returned success exit code is ${mktemp_ec}"

echo "mkdir returned failure exit code is ${mkdir_ec}"

#######################################

#test command and its shorthand

#test command
test -d /home/ubuntu/
echo $?

#shorthand notation
[ -d /home/ubuntu/ ]
echo $?

# usind test command we can do comparisons using -gt, -ne, -eq, -lt
test 2 -gt 1 && echo "yes" || echo "no"
[ 1 -eq 2 ]
echo $?
[[ 2 -ne 3 ]] && echo "yes" || echo "no"
test 1 -lt 2 && echo "yes" || echo "no"
[[ -f linux28.sh ]] && echo "file exist" || echo "file not found"

#if-then-exit

File=linux28.sh

# check if the file exists

if [[ -f ${File} ]]; then
	cat ${File}
	exit 0
fi

exit 1

#now for file doesnot exists

File_1=linux.sh
if [[ -f ${File_1} ]]; then
	cat ${File_1}
	exit 0
fi

exit 1

