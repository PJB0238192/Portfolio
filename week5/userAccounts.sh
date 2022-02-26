#!/bin/bash
#uses awk to filter data from /etc/passwd
#Phillip 22/02/2022

#the first part of this script used cat to access the bin/bash directory
#it then uses awk and sets parimeters, sepating data @':'
#it uses multiple print statements to ensure data is displayed in a usable manor

#secondly it has a final statment that completes step 4
#it uses regex to filter data that only has /bin/bash as default script

#original get below, used for all items with '/etc/passwd'
#cat /etc/passwd | awk 'BEGIN {

#this only gets us items that have '/bin/bash'
grep "/bin/bash" /etc/passwd | awk 'BEGIN {

    FS=":";
    
    print("___________________________________________________________________________________________________________________");
    print "| \033[34mUsername\033[0m | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome\033[0m | \033[34mShell\033[0m |";
    print("|______________________|________|_________|___________________________________|______________________|");

}

{
    
    printf("| \033[33m%-20s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-25s\033[0m | \033[35m%-25s\033[0m|\n", $1, $3, $4, $6, $7);
    
}

END {

    print("___________________________________________________________________________________________________________________");
    
    #REFERENCE
    #https://www.shortcutfoo.com/app/dojos/awk/cheatsheet

}'
