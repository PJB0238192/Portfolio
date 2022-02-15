#!/bin/bash
#copies a folder, creates new folder in desired directory
#Phillip 28/01/22

#user input, folder name
read -p "Type the name of the folder you would like to copy: " folderName

#if the name is a valid directory
if [ -d "$folderName" ]; 
    then

    #user input, folder destination
    read -p "Type the name of the destination folder: " newFolderName

    #copy it to the new location
    cp -r "$folderName" "$newFolderName"

else
    
    #else, print error
    echo "Sorry!, I couldn't find that folder."

fi