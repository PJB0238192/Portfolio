#!/bin/bash
#sets a password and hash for a folder
#Phillip 25/01/2022

#the read statments, asking user input, -sp so password isn't shown when typed
read -p "Please type the folder name: " folderName
read -sp "Please input password: "  pass_var

#echo to stop break up, stop the overlap of text
echo

#the outputs
echo "Folder Name : $folderName"
#echo "Password is: $pass_var"

echo "Your password has been hashed and stored in secret.txt"

#prints folderName on 1st line
echo "The folder name is : $folderName" >> secret.txt

#prints on 2nd line
#create a .txt called secret.txt that contains the pass_var from user
#pass_var is now hashed 'sha256sum'
echo $pass_var | sha256sum  >> secret.txt

#exit the script
echo 0