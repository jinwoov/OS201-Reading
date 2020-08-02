#!/bin/bash

# Script Name: Lab 6
# Author: Jin Kim
# Date of Last revision: 08/03/2020
# Description of purpose: To output system specification to text file and condense it using select-string method.

# DECLARATION OF VARIABLES

# DECLARATION OF FUNCTIONS


# MAIN
## Sytem Information
sudo dmidecode | awk '/System/,/^$/'
## BIOS information
sudo dmidecode | awk '/BIOS/,/^$/'
## MotherBoard
sudo dmidecode | awk '/Base Board/,/^$/'
## CPU
echo "CPU information"
sudo lshw -c cpu
## Hard Drive
echo
echo "Logical Hard Drive Information"
sudo fdisk -l | awk '/\/dev\/sda1/,/\/dev\/sda5/'

echo
echo "Pysical Hard Drive Information"
sudo fdisk -l | awk '/\/dev\/sda:/,/Disk identifier:/'



# END
