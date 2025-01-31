#!/bin/bash

USER=$(id -u)

if [ $USER -eq 0 ]
then
    echo "he is ROOT user"
else
    echo "he is NOT A ROOT user"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    else
        echo "MYSQL installed SUCCESS"
fi

if [ $? -ne 0 ]
then # not installed
    dnf install git -y
    else
        echo "GIT installed SUCCESS"
fi
