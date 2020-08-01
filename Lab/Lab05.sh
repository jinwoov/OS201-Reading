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

DOFUNC(){
    echo "Creating a new file..."
    touch $FILENAME
    SLEEP
    echo "Creating a new folder"
    mkdir $LOCATION
    SLEEP
    echo "Copying the file to the folder"
    cp $FILENAME $LOCATION
    SLEEP
    echo "This is what we have in that folder"
    ls $LOCATION
}

SLEEP(){
    sleep 1s
    echo "DONE"
    sleep 1s
}

CREATETAR(){
    echo "Creating the file..."
    mkdir $LOCATION/result
    tar -czf $LOCATION/result/$TARFILE $FILENAME
    SLEEP
    echo "This is what we have in the folder"| tee result.txt
    ls $LOCATION/result | tee -a result.txt
    echo "This is what we have in the tar file" | tee -a result.txt
    tar -ztf $LOCATION/result/$TARFILE | tee -a result.txt
}

EXTRACTTAR(){
    echo "Extracting the file..." | tee -a result.txt
    tar -xzf $LOCATION/result/$TARFILE -C $LOCATION/result/
    SLEEP
    echo "Here is outcome" | tee -a result.txt
    ls $LOCATION/result | tee -a result.txt
}


# MAIN (Calling all the operator)
DOFUNC
read -p "Do you want compress it to 'tar' file? Yes(1), No(2)" ANSWER
if [[ $ANSWER == '1' || $ANSWER == 'YES' || $ANSWER == 'yes' ]]
then
    CREATETAR
fi
read -p "Do you want to extract file to the folder? Yes(1), No(2)" ANSWER
if [[ $ANSWER == '1' || $ANSWER == 'YES' || $ANSWER == 'yes' ]]
then
    EXTRACTTAR
fi
    

#END