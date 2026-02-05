#!/bin/bash

if [ "$#" -ne 3 ]; then
   echo "Require number on arguments not passed"
   echo "Usage ./replaceWord.sh <FileNameWhereTheWordsNeededToReplace> <WordToSearch> <WordToReplace>"
   exit 1
fi

file=$1
search=$2
replace=$3

if [ -f "$1" ]; then
   echo "$1 exist. Searching for $2"
else
   echo "$1 file not exist"
   exit 1
fi

if grep -qi "$2" "$1";then
	echo "$2 is present in $1"
else
	echo "$2 is not present in $1"
	exit 1
fi

cp "$1" "$1"_copy

sed -i "s/$2/$3/g" "$1"

echo "Done."
