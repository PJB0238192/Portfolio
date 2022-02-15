#!/bin/bash
#sets creates a new folder in selected directory
#Phillip 25/01/2022

#read command asking for folder name
read -p "type the name of the folder you would like to create: " folderName

#execute the .sh, create new folder
mkdir "$folderName"

exit 0