#!bin/bash

# Script Name: Lab 1
# Author: Jin Kim
# Date of Last revision: 07/27/2020
# Description of purpose: To create a shell commands to show all of the OS information and create variable


# Declaration of variables
DOG="Mochi"
ENTER="PRESS ENTER"

# Declaraiton of functions
function WHOSMYDOG() {
echo "Hi $NAME, $DOG is my doggy"
}

## MAIN ##
# Concise version of OS.
echo "This is current OS: "
uname

# This is to indicate full information of OS.
echo "This is full information: "
uname -a

# This is to show the variable and function usability
# The prompt will store vaiable "NAME" and will be used in "WHOSMYDOG" function
read -p "What is your name?" NAME
WHOSMYDOG

read -p "To go to stretch goal $ENTER"

# To clear the command-line
clear

## STRETCH GOAL ##
# This allows user to see their computer spec in one go 
lscpu

# To clear command line
read -p "lsblk? $ENTER"
clear

# This is to show all of the available block devices. 
lsblk -a

#Clearing the command-line 
read -p "lscpu? $ENTER"
clear

# To show all of the USB ports thats available
lsusb -v

# Clear commandline
read -p "lspci? $ENTER"
clear

# To list in tree all of the PCI sockets in the computer
lspci -t

# Clear
read -p "lspci -vmm? $ENTER"
clear

# To list of the PCI sockets in detail
lspci -vmm

# Clear
read -p "lsscsi -s? $ENTER"
clear

# To show hard drive information and its size
lsscsi -s


# END