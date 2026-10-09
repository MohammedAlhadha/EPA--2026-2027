3#!/bin/bash
# Get the number supplied by the user
max_processes=$1

# Count the running processes
ct=$(ps | wc -l)

echo "Choose an option:"
echo "1 - Display result on screen"
echo "2 - Write result to file"
read choice

if [ $ct -gt $max_processes ]; then
    message="Maximum number of processes exceeded"
else
    message="The maximum number of processes NOT exceeded"
fi

if [ $choice -eq 1 ]; then
    echo "$message"
elif [ $choice -eq 2 ]; then
    echo "$(date) - $message" >> process_log.txt
else
    echo "Invalid choice"
fi





# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"
