#!/bin/bash
#downloads website via URL using 'wget'
#Phillip 05/02/22

#while, Echo (user input URL), read URL >> if URL Download, print input
while :
do

    #user input and exit options
    echo "Enter a URL you wish to download, or type 'exit' to quit: "

    #read user input
    read input

    #check if input = exit, if not then...ask for directory
    if ([ "$input" != "exit" ])
    then

        #read you directory choice
        read -p "Type the location of where you would like to download the file to: " directory

        #wget - download URL to directory
        wget -p "$directory" "$input"

        #print - download successful
        echo "The download was succesful!"
    
        #start exit statement
    elif ([ "$input" == "exit" ])
    then

        #exit loop
        echo "Program closed"

        exit 1

    else 

    #error catching
    echo ""
    echo "An Error has occured, please check input is valid and try again"

    fi

done
exit 0
