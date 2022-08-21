#!/usr/bin/env bash

# auto commit to github

############################ variables #############################
COMMIT_MESSAGE_EXIST=0
COMMIT_MESSAGE=""
RED='\033[0;31m'
Green='\033[0;32m'
UYellow='\033[4;33m'
UGreen='\033[4;32m'
BIGreen='\033[1;92m'
Cyan='\033[0;36m'
On_Blue='\033[44m'
On_Green='\033[42m'
NC='\033[0m' # No Color


############################# COMMIT MESSAGE ##############################
while [ $COMMIT_MESSAGE_EXIST -eq 0 ] ; do
    # read -p "Enter Your Commit Message : " COMMIT_MESSAGE
    printf "${Cyan}Enter Your Commit Message : ${NC}"
    read COMMIT_MESSAGE
    if [ -z "$COMMIT_MESSAGE" ]; then
        printf "\n ${RED}ERROR:${NC}  ${UYellow}COMMIT MESSAGE IS EMPTY${NC} ${Green} PLEASE ENTER COMMIT MESSAGE ${NC} \n \n"
    else
        printf "\n${On_Green}YOUR COMMEIT MESSAGE${NC} : ${BIGreen} $COMMIT_MESSAGE ${NC} \n \n"
        COMMIT_MESSAGE_EXIST=1
    fi
done


############################# COMMIT ##############################
git add .
git commit -m "$COMMIT_MESSAGE"


exit 0
