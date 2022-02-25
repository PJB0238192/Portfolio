#!/bin/bash
#calculator script
#Phillip 04/02/22

#text colours
Blue='\033[1;34m'
Green='\033[1;32m'
Red='\033[1;31m'
Purple='\033[1;35m'
White='\033[0;37m'
Cyan='\033[0;36m'

echo ""
echo "This is a calculator"

#read user inputs 1&2
echo -e "${Cyan}\e[4mEnter first integer:${White}"
read int1

echo -e "${Cyan}\e[4mEnter second interger:${White}"
read int2

#choice of operations
echo -e "Enter operation choice${White}"
echo -e "${Blue}1. Addition${White}"
echo -e "${Green}2. Subtraction${White}"
echo -e "${Red}3. Multiplication${White}"
echo -e "${Purple}4. Division${White}"
read ch

#operational case statment, if int1 +,-,\* int2
case $ch in
    1)
    res=`echo $int1 + $int2 | bc`
    ;;
    2)
    res=`echo $int1 - $int2 | bc`
    ;;
    3)
    res=`echo $int1 \* $int2 | bc`
    ;;
    4)
    res=`echo "scale=2; $int1 / $int2" | bc`
    ;;

esac


#print results
echo -e "${White}Result : $res"
