#!/bin/bash
#password checker
#Phillip 28/01/22

#variable for .txt
file=$(<secret.txt) 

#our user input variable
echo -e "Please input password: "
read -s pass_var

#hashing user input
passVar=$(echo $pass_var | sha256sum)

#used for error/debugging
#echo "Password hash was $passVar"
#echo "Stored hash was $file"

#if statment, if true access, if false denied
if [[ "$file" == "$passVar" ]]; 
    then

    echo "Access Granted"
    echo 0
    exit 0

else 

    echo "Access Denied"
    echo 1
    exit 1

#end
fi
