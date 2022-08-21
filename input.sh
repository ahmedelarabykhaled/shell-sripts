#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]; do
    echo "Enter your name: "
    read NAME
    echo "Enter your favourite sport: "
    read SPORT
    echo "Hello $NAME, your favourite sport is $SPORT"
    echo "Do you want to continue? (y/n)"
    read CONTINUE
    if [ $CONTINUE == "y" ]; then
        VALID=0
    else
        VALID=1
    fi
done

exit 0
