#!/bin/bash
#Guessing Game Script
#Phillip 10/02/2022

#colours
Purple='\033[1;35m'
Red='\033[1;31m'
NC='\033[0m' #no colour

#error reporting function
printError()
{
    echo -e "${Red}Error: $1 ${NC}"
    
}

#get value, check if correct = ok, if low, if high = printError
getGuess()
{
    #reads input, if < correct then print
    read -p "$1: "
    while (( $REPLY < $correct || $REPLY > $correct ));
    do
        if (( $REPLY < $correct && $REPLY >= $2 ));
        then 

            printError "Number too low!"
            read -p "$1: "

        #if input > correct then print
        elif (( $REPLY > $correct && $REPLY <= $3 ));
        then
            
            printError "Number too high!"
            read -p "$1: "

        else

            #print error if number not between 1 and 2
            printError "Input must be between $2 and $3"
            read -p "$1: "

        fi
    done
}

correct=42
echo -e "${Purple}Welcome to the Guessing Game!"
echo -e "${NC}"
getGuess "Please input a number between 1 and 100" 1 100

echo "Correct!"
