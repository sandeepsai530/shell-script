#!/bin/bash

USER=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2 ... FAILURE"
    exit 1
else
    echo "$2 ... SUCCESS"
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
    echo "MYSQL is already INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then # not installed
    dnf install git -y
    VALIDATE $? "Installing GIT"
else
    echo "GIT is already INSTALLED"
fi