#!bin/bash

# Script Name: Lab 3
# Author: Jin Kim
# Date of Last revision: 07/31/2020
# Description of purpose: To use concatenation to copy the file twice like a virus

# Declaration of variables
## Variable to track how many times files are being created
counter=0
## To get current file name
fileName=$0
## Limit is set by what user pass in as parameter or from the read
limit=$1

## while loop to check the limit is null or empty string it will ask again how 
while [ -z $limit ]
do
    read -p "Please enter how many virus file you want? " limit
done
## Changing string data type to integer
declare -i limit

# Declaration of functions
function CREATE {
    # If statement to track if count is less than user's input
    if [ $counter -ge $limit ]
    then
        return
    fi

    ## Incrementing
    ((counter++))
    ## Reassigning the newfile variable
    newFile=$fileName$counter

    ## Showing the name of the file
    echo "$newFile is created, opening new browser now..."

    ## copy command
    cp $fileName $newFile

    ## Firefox
    /usr/bin/firefox https://www.jinwookim.net

    ## Recursion
    CREATE
}

## Remove function to remove all of the files that were created
function REMOVE {
    ## If logic to remove if user choose yes in the option
    if [ $ANSWER == "1" ]
    then
    ## until counter is less than nor equal to 0
        until [ $counter -le 0 ]
        do
            ## Reassigning newFile
            newFile=$fileName$counter
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

