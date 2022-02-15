#!/bin/bash
#Allows user to create a password
#Phillip 28/01/22

#ask user for password
echo "enter password: "

#read user input, variable
read -s password

#save input as variable
len="${#password}"

#if statment, validating user input is lower then 8
if test $len -ge 8 ; 
    then

    echo "$password" | grep -q [0-9]

if test $? -eq 0 ; 
    then

    echo "$password" | grep -q [A-Z]

if test $? -eq 0 ;
    then

    echo "$password" | grep -q [a-z]

if test $? -eq 0 ; 
    then

    echo "$password" | grep -q [$,@,#,%]

if test $? -eq 0 ; 
    then

    echo "Strong password"

else

    echo "weak password include special char"

fi
else 

    echo "weak password include lower case char"

fi
else 

    echo "weak password include capital char"

fi
else

    echo "weak password include numbers in the password"

fi
else

    echo "password length should be greater than or equal to 8 hence weak password"

fi

