#!/bin/bash

# Script Name: Lab 12
# Author: Jin Kim
# Date of Last revision: 08/11/2020
# Description of purpose: To understand DNS server of domain input by the user

# DECLARATION OF VARIABLES
DOMAIN="";
TEXTFILE="./single.txt";
# DECLARATION OF FUNCTIONS
USERINPUT() 
{
    HEADER "Here is an information about $1"
    whois $1;
}

DIGGINGINFO()
{
    HEADER "Here is an digging info about $1"
    dig $1;
}

HOSTINFORMATION()
{
    HEADER "Here is an host info about $1"
    host $1;
}

NSLOOKUP()
{
    HEADER "Here is an nslookup info about $1"
    nslookup -q=any $1;
}
##################
# Helper Methods #
##################

HEADER()
{
    echo "###########################################";
    echo "  $1  ";
    echo "###########################################";
}

SLEEPER()
{
    sleep 2s;
}


# MAIN
read -p "What site do you want to search?  " DOMAIN;
USERINPUT $DOMAIN | tee $TEXTFILE;
DIGGINGINFO $DOMAIN | tee -a $TEXTFILE;
HOSTINFORMATION $DOMAIN | tee -a $TEXTFILE;
NSLOOKUP $DOMAIN | tee -a $TEXTFILE;
# END