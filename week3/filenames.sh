#!/bin/bash
#validates lines in a file, printing for line findings
#Phillip 05/02/22
#run script first using 'chmod u+x' to pass "permission denied" errors

#file input from ueser via cli
input=$1
#while loop iteration via each line of chosen file
#use IFS to recognise word boundries
while IFS= read -r line

do
    #if line blank DO nothing
    if ([ "$line" == "" ])
    then

    #continue reading lines
    continue

    #if line is file
    elif test -f $line
    then
        
        #print output
        echo "$line - That file exists!"

    #if line is directory
    elif test -d $line
    then

        #print output
        echo "$line - That's a directory!"

    #if line doesn't exist
    else

        #print output
        echo "$line - I don't know what that is!"

    fi

done < "$input"
exit 0
