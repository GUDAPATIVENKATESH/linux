#Question: Write a shell script that accepts one or more file or directory names as command-line arguments. For each argument, the script should report: 
#If the item is a regular file, a directory, or another type of file.
#The long listing (permissions, owner, size, date, name) of the item.
#An appropriate exit status for each item process: 0 for a regular file, 1 for a directory, and 2 for another type of file. 
#The script should iterate through all provided arguments. If a specific item does not exist, it should print an error message but continue processing subsequent arguments. 

#!/bin/bash

echo "Total number of arguments passed: $#"
echo "All arguments: $@"

echo "Processing arguments one by one to findout type of object"
for arg in "$@"; do
	if [ ! -e "$arg" ]; then
		echo "$arg does not exist"
	elif [ -f "$arg" ]; then
		echo "$arg is a file"
		ls -lrth "$arg"
	elif [ -d "$arg" ]; then
		echo "$arg is a directory"
	    ls -lrth "$arg"
	else
		echo "$arg is another type of file"
		ls -lrth "$arg"
	fi
done
