#!bin/bash

# Script Name: Lab 4
# Author: Jin Kim
# Date of Last revision: 07/30/2020
# Description of purpose: To create a text file using the information of operations

# DECLARATION OF VARIABLES
FILE="system-report.txt"

# DECLARATION OF FUNCTIONS
function TOTEXTFILE(){
    ## Sub Heading
    echo "## $2" >> $FILE 
    EMPTYSPACE
    ## calling sudo method to file
    sudo $1 $3 >> $FILE
    EMPTYSPACE
}
## Empty space between each line
function EMPTYSPACE(){
    echo >> $FILE
}

# MAIN (Calling all the operator)
## Header
echo "# SYSTEM IMFORMATION #" >> $FILE
TOTEXTFILE lshw "Devices Available" -short 
TOTEXTFILE free "Memory Space"
TOTEXTFILE vmstat "VMSTAT"
TOTEXTFILE lscpu "Processors"
TOTEXTFILE dmidecode "BIOS"
TOTEXTFILE ip "IP Config" a
TOTEXTFILE lsblk "Block Devices" -a
TOTEXTFILE lsusb "USB list" -v
TOTEXTFILE lspci "PCI sockets in tree form" -t
TOTEXTFILE lspci "PCI sockets in dtails" -vmm
TOTEXTFILE lsscsi "Hard Drive" -s
mv $FILE "system-report-BIOS.txt"
# END