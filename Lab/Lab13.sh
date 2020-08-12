#!/bin/bash

# Script Name: Lab 13
# Author: Jin Kim
# Date of Last revision: 08/12/2020
# Description of purpose: To show ports that are available in this operating system. And display this outputs according to user's choice.


# DECLARATION OF VARIABLES
PORTS=netstat;
# DECLARATION OF FUNCTION

## Function that takes in user's choice and run the case statement to match what user have answer. If none of the case matches user's choice, it will prompt them again for valid option.
function USERANSWER()
{
    case $1 in
        [1] | [aA][lL][lL] | [aA])
            HEADER "Here is all ports";
            SHOWPORTS;
            ;;
        [2] | [oO][pP][eE][nN] | [oO])
            HEADER "Here is all of the open ports";
            SHOWPORTS "STREAM";
            ;;
        [3] | [cC][lL][oO][sS][eE][dD] | [cC] | [cC][lL][oO][sS][eE])
            HEADER "Here is all of the closed ports"
            SHOWPORTS "DGRAM";
            ;;
        *)
            read -p "Please choose correct choice  " ANSWER;
            USERANSWER $ANSWER;
            ;;
    esac
}

## Show all of the ports available in the terminal
function SHOWPORTS()
{
    ## -z is to check if argument is null.
    if [ -z $1  ]
    then
        $PORTS -a;
    else
        $PORTS -a | grep $1;
    fi
}

##################
# Helper Methods #
##################
## To show header of each output.
function HEADER()
{
    echo;
    echo "###########################################";
    echo "  $1  ";
    echo "###########################################";
    echo;
}


# MAIN
read -p "Would you like to see.. (1)all, (2)open, (3)closed  " ANSWER; 
USERANSWER $ANSWER;


# END

