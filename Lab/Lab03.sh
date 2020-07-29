#!bin/bash

# Script Name: Lab 3
# Author: Jin Kim
# Date of Last revision: 07/31/2020
# Description of purpose: To use concatenation to copy the file twice like a virus

# Declaration of variables
counter=0
fileName=$0
limit=$1
if [ -z $limit ]
then
    read -p "Please enter how many virus file you want?" limit
fi
declare -i limit

# Declaration of functions
function CREATE {
    # If statement to track if its 
    if [ $counter -ge $limit ]
    then
        return
    fi

    ## Incrementing
    ((counter++))

    newFile=$fileName$counter

    ## copy command
    cp $fileName $newFile



    ## Firefox
    /usr/bin/firefox --new-window https://www.jinwookim.net

    ## Recursion
    CREATE
}

function REMOVE {
    if [ $ANSWER == "1" ]
    then
        until [ $counter -le 0 ]
        do
            rm $newFile
            ((counter--))
        done
    fi
}

# Main
CREATE
read -p "Do you want to erase all of the file? Yes(1) or No(2)" ANSWER
REMOVE
echo "All Done"


# END