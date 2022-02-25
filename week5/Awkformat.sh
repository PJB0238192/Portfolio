#!/bin/bash
#script that contains awk code
#Phillip 22/02/2022

#post text to terminal
echo "Google Server IPs:"

#awk statment
#checks for ':', uses as field separator
#prints top line of box
#secondly, prints headers on left, separated via ':'
#third, adds data/addresses on right
#fourth, prints bottom line of box
#reads from input.txt, ends
awk 'BEGIN{
    
    FS=":";
    
    print "________________________________";
    print "|\033[34mServer Type\033[0m  | \033[34mIP\033[0m             |"; 

}

{

    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);

}
END {

    print("________________________________");

}' input.txt #file awk to use