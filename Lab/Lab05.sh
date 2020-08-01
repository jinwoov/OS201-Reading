#!/bin/bash

# Script Name: Lab 5
# Author: Jin Kim
# Date of Last revision: 07/31/2020
# Description of purpose: To create a backup using cp command and stretch goal is to create a tar file

# DECLARATION OF VARIABLES
FILENAME=DeathStar.txt
LOCATION=~/Desktop/EMPIRE
TARFILE=StarWars.tar
# DECLARATION OF FUNCTIONS

## This function creates a file and folder. Then it copies the file to that folder's location
DOFUNC(){
    echo "Creating a new file..."
    ## Creates new file call StarWars.txt
    touch $FILENAME
    ## This function is creating waiting period, so that each process seems more realistic
    SLEEP
    echo "Creating a new folder"
    ## Creating new folder in the desktop
    mkdir $LOCATION
    SLEEP
    echo "Copying the file to the folder"
    ## Copying the file to the folder that was created in the desktop
    cp $FILENAME $LOCATION
    SLEEP
    echo "This is what we have in that folder"
    ## lists out all of the files in that folder
    ls $LOCATION
}

## This function is created to give the user more realistic feel to each step rather than everything happpening immediately
SLEEP(){
    sleep 1s
    echo "DONE"
    sleep 1s
}

## This function create a tar file to the desktop folder location
CREATETAR(){
    echo "Creating the file..."
    mkdir $LOCATION/result
    ## This is compressing function that will compress file to the destination
    tar -czf $LOCATION/result/$TARFILE $FILENAME
    SLEEP
    ## tee here is a function that is copying the output to the result.txt text file
    echo "This is what we have in the folder"| tee result.txt
    ## listing all of the files in the location 
    ls $LOCATION/result | tee -a result.txt
    echo "This is what we have in the tar file" | tee -a result.txt
    ## displaying file that is in the tar compressed file
    tar -ztf $LOCATION/result/$TARFILE | tee -a result.txt
}

EXTRACTTAR(){
    echo "Extracting the file..." | tee -a result.txt
    ## extracting tar file t othe location
    tar -xzf $LOCATION/result/$TARFILE -C $LOCATION/result/
    SLEEP
    echo "This is what you have in the folder after extracting tar file" | tee -a result.txt
    ls $LOCATION/result | tee -a result.txt
}

#If logic function that will pass in another function with the answer and execute accordingly
IFUNC() {
    if [[ $1 == '1' || $1 == 'YES' || $1 == 'yes' ]]
    then
        $2
    fi
}


# MAIN (Calling all the operator)
DOFUNC

## making sure that the answer that user choose is yes or 1, then it will execute functions
read -p "Do you want compress it to 'tar' file? Yes(1), No(2)" ANSWER
IFUNC $ANSWER CREATETAR
## This logic make sures that file was zipped and can be found when extracting.
if [[ $1 == '1' || $1 == 'YES' || $1 == 'yes' ]]
then
    read -p "Do you want to extract file to the folder? Yes(1), No(2)" ANSWER
    IFUNC $ANSWER EXTRACTTAR
else
    echo "Thank you for using this application"
    sleep 1s
fi
  

#END