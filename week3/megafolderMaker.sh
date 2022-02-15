#!/bin/bash
#mass creates folders in directory
#Phillip 4/02/22

#if there aren't two arguments to the script
if (( $#!=2 ));
then

    #print an error and exit
    echo "Error, please provide two numbers" && exit 1

fi

#for every number between the first argument and the last
for ((i=$1; i <= $2; i++))

do

    #create a new folder for that number
    echo "Creating folder number $i"

    mkdir "week $i"

done