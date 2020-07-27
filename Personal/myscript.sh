#! /bin/bash

# ECHO COMMAND
# echo Hello world!

# Variables
# Uppercase by convention
# Letters, numbers, underscore
# $to call the variables or ${}
NAME="Jinf"
# echo "my name is ${NAME}"

#User Input
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you"

# Simple if statement
# if [ "$NAME" == "Jin" ]
# then
#     echo "Your name is Jin"
# fi

# If else statement
# if [ "$NAME" == "Jin" ]
# then
#     echo "Your name is Jin"
# else
#     echo "Your Name is not Jin"
# fi

# Else if statement (elif)
# if [ "$NAME" == "Jin" ]
# then
#     echo "Your name is Jin"
# elif [ "$NAME" == "Jinf" ]
# then
#     echo "Your name is jinf"
# else
#     echo "Your Name is not Jin"
# fi

##### Comparison####

# NUM1=31
# NUM2=5

# if [ "$NUM1" -gt "$NUM2" ]
# then
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"
# fi


#####
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less han or equal to val2
####

# FILE CONDITION
# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#     echo "$FILE exists"
# else
#     echo "$FILE is NOT a EXIST"
# fi


#####
# -d file True if the file is a directory
# -e file True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file True if the provided string is a file
# -g file True if the group id is set on a file
# -r file True if the file is readable
# -s file True if the file has a non-zero size
# -u  True if the user id is et on a file
# -w  True if the file is writable
# -x  True if the file is an executable
#####


# Case statement

# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#      echo "You can have a beer :)"
#      ;;
#     [nN] | [nN][oO])
#      echo "Sorry no drinking"
#      ;;
#     *)
#      echo "Please enter y/yes or n/no"
#      ;;
# esac

## SIMPLE FOR Loop
# NAMES="Jin Ally Mochi Kudo"
# for NAME in $NAMES
#     do
#         echo "Hello $NAME"
# done

# For loop to rename files
# anything with text extension will be grabbed here
# FILES=$(ls *.txt) 
# New="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

# WHILE loop - read through the file LINE BY LINE

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "./1.txt"

# Function
# function sayHello() {
#     echo "Hello World"
# }

# sayHello

# FUNCTION with PARAMS
# function greet() {
#     echo "Hello, I am $1 and I am $2"
# }

# greet Jin Ally

# Create a folder and write to a file
mkdir Hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"