
COLOR=$1

if [ -z $COLOR ]
then
    echo "Please enter a color"
    exit 1
fi

if [ $COLOR = "blue" ]
then
 echo "the color is blue"
 else
 echo "the color is not blue"
fi

USER_GUESS=$2
COMPUTER=50

if [ -z $USER_GUESS ]
then
    echo "Please enter a number"
    exit 1
fi

if [ $USER_GUESS -lt $COMPUTER ]
then
    echo "the guess is less than the computer"
elif [ $USER_GUESS -gt $COMPUTER ]
then
    echo "the guess is greater than the computer"
else
    echo "the guess is equal the computer"
fi

