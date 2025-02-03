#!/bin/bash

USER=$(id -u)

if [ $USER -eq 0 ]
then 
    echo "he is ROOT user"
else
    echo "he is NOT a ROOT user"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    else
        echo " MYSQL already installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    else
        echo "GIT already installed"
fi