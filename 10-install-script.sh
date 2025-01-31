#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "ERROR: unauthorized user"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MYSQL ... FAILURE"
        exit 1
    else
        echo " Installing MYSQL ... SUCCESS"
    fi
else
echo "MYSQL is already INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then # not installed
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installing GIT ... FAILURE"
        exit 1
    else
        echo " Installing GIT ... SUCCESS"
    fi
else
echo "GIT is already INSTALLED"
fi