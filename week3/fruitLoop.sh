#!/bin/bash
#iterative script for loops of fruit
#Phillip 4/02/22

#fruit colours
Red='\033[0;31m'
Yellow='\033[1;33m'
Orange='\033[0;33m'
Green='\033[1;32m'
White='\033[1;37m'
NC='\033[0m'

#array to hold fruit
fruit=("${Red}Apple" "${Green}Mango" "${White}Strawberry" "${Orange}Orange" "${Yellow}Banana")

#iterate through fruit in array, complete loop
for ((i=0; i<${#fruit[@]}; i++))
do

    echo -e "${NC}FRUIT: ${fruit[i]}"

done
exit 0