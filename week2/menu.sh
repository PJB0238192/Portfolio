#!/bin/bash
#Check user pword, if true allows folder options.
#Phillip 28/01/22

#run the passwordCheck script
./passwordCheck.sh 

#check if script was success
if [ $? -eq 0 ]
    then

#print user options
echo "1. Create a folder"
echo "2. Copy a folder"
echo "3. Set a password"

#read user input
read choice

case $choice in

    1)
    ./folderMaker.sh
    ;;

    2)
    ./folderCopier.sh
    ;;

    3)
    ./setPassword.sh
    ;;

    *)
    echo "Error, please select a valid option"

esac

else

exit 1
fi