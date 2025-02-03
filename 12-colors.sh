#!/bin/bash

USER=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2 ... $R FAILURE"
    exit 1
else
    echo "$2 ... $G SUCCESS"
fi
}

if [ $USER -ne 0 ]
then
    echo "ERROR: unauthorized user"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    VALIDATE $? "installing MYSQL"
else
    echo "MYSQL is already ... $Y INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then # not installed
    dnf install git -y
    VALIDATE $? "Installing GIT"
else
    echo "GIT is already $Y INSTALLED"
fi