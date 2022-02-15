#!/bin/bash
#asks for password, executes scripts based on input
#Phillip 6/02/22

#colours
Red='\033[0;31m'
Yellow='\033[1;33m'
Orange='\033[0;33m'
Green='\033[1;32m'
White='\033[1;37m'
Cyan='\033[0;36m'
NC='\033[0m' #no colour

#error reporting function
printError()
{
    echo -e "${Red}Error: $1 ${NC}"
    
}

echo "Password is '12345'"
#runs week 2 script, check passord
~/scripts/portfolio/week2/passwordCheck.sh

#checks password
if [ $? -eq 0 ];
then
    

    while :
    do  
        #menu intro and instructions
        echo ""
        echo "Menu Selection"
        echo ""
        echo "Please type the option number you would like to access"
        echo "EXAMPLE: 4 'Enter'"
        echo ""

        #menu options of user
        echo -e "${Cyan}1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a password"
        echo "4. Calculator"
        echo "5. Create Week Folders"
        echo "6. Check Filenames"
        echo "7. Download a file"
        echo -e "${White}8. Exit, Q or E"

        #reads user input
        read choice
        echo ""
        echo "Your Menu Choice was: $choice"
        echo ""

        #case point for week2/3 script use
        case $choice in

            1) 
            ~/scripts/portfolio/week2/folderMaker.sh
            ;;

            2)
            ~/scripts/portfolio/week2/folderCopier.sh
            ;;

            3)
            ~/scripts/portfolio/week2/passwordCreate.sh
            ;;
            4)
            ~/scripts/portfolio/week3/calculator.sh
            ;;

            5)
            ~/scripts/portfolio/week3/megafolderMaker.sh
            ;;

            6)
            ~/scripts/portfolio/week3/filesnames.sh
            ;;

            7)
            ~/scripts/portfolio/week3/InternetDownloader.sh
            ;;

            #exit options, otherwise the script will continue to run until exited
            8 | Exit | Q | E | e | q | exit)
            echo -e "${Yellow}"
            echo "See you next time!"
            echo -e "${NC}"
            exit 1
            ;;

            #error checking
            #if input is not valid then print error
            *)
                printError "please choose a valid option or 'EXIT'."   
            ;;

        esac

done

#password verification loop password incorrect = exit
else 
exit 1

fi 

