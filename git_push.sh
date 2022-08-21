#!/usr/bin/env bash

# auto push to github


############################# variables #############################
BRANCH_NAME_EXIST=0
COMMIT_MESSAGE_EXIST=0
PUSH_BRANCH=""
RED='\033[0;31m'
Green='\033[0;32m'
UYellow='\033[4;33m'
BIGreen='\033[1;92m'
Cyan='\033[0;36m'
On_Blue='\033[44m'
On_Green='\033[42m'
NC='\033[0m' # No Color


############################## BRANCH NAME ##############################
printf "${Cyan}Enter Your Branch Name : ${NC}"
read BRANCH_NAME


############################## COMMIT MESSAGE ##############################
while [ $COMMIT_MESSAGE_EXIST -eq 0 ] ; do
    printf "${Cyan}Enter Your Commit Message : ${NC}"
    read COMMIT_MESSAGE

    if [ -z "$COMMIT_MESSAGE" ]; then
        printf "\n ${RED}ERROR:${NC}  ${UYellow}COMMIT MESSAGE IS EMPTY${NC} ${Green} PLEASE ENTER COMMIT MESSAGE ${NC} \n \n"
    else
        printf "\n${On_Green}YOUR COMMEIT MESSAGE${NC} : ${BIGreen} $COMMIT_MESSAGE ${NC} \n \n"
        COMMIT_MESSAGE_EXIST=1
    fi
done


############################## PUSH BRANCH ##############################
if [ -z "$BRANCH_NAME" ]; then
    PUSH_BRANCH=""
else
    PUSH_BRANCH="origin $BRANCH_NAME"
fi


############################## PUSH ##############################
git add .
git commit -m "$COMMIT_MESSAGE"
git push $PUSH_BRANCH


exit 0
