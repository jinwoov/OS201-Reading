#!/bin/bash

# Script Name: Lab 12
# Author: Jin Kim
# Date of Last revision: 08/11/2020
# Description of purpose: To understand DNS server of domain input by the user

# DECLARATION OF VARIABLES
DOMAIN="";
TEXTFILE="./single.txt";
# Taking user's input and look up what the DNS is about by using `whois` command
USERINPUT() 
{
    HEADER "Here is an information about $1"
    whois $1 | awk '/Domain Name/,/DNSSEC/';
}

## To lookup DNS inormation
DIGGINGINFO()
{
    HEADER "Here is an digging info about $1"
    dig $1;
}

## To see ip addresses and mail hosting addresses.
HOSTINFORMATION()
{
    HEADER "Here is an host info about $1"
    host $1;
}

## To look up aunhorative answer and non-authoriatative answer of the domain.
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
    echo;
    echo "###########################################";
    echo "  $1  ";
    echo "###########################################";
    echo;
}

# MAIN

read -p "What site do you want to search?  " DOMAIN;
USERINPUT $DOMAIN | tee $TEXTFILE;
DIGGINGINFO $DOMAIN | tee -a $TEXTFILE;
HOSTINFORMATION $DOMAIN | tee -a $TEXTFILE;
## STRETCH GOAL ##
NSLOOKUP $DOMAIN | tee -a $TEXTFILE;

# END