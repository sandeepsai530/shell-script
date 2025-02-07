#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

USERID=$(id -u)

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then
    echo -e "$R NOT A ROOT USER"
else
    echo -e "$G ROOT USER"
fi
}

CHECK_ROOT