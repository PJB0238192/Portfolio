#!/bin/bash
#get number dictated by user range
#Phillip 10/02/2022

#this function prints can error
printError()

{

    echo -e "\033[31mError:\033[0m $1"

}

#this function gets value between 2nd and 3rd arguments
getNumber()
{

    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 ));
    do

        printError "Input Must be between $2 and $3"

        read -p "$1: "

    done
}

echo "This is the start of the script"
getNumber "please type a number between 1 and 10" 1 10
echo "Thank you!"

getNumber "please type a number between 50 and 100" 50 100
echo "Thank you!"