#!/bin/bash

USER=$(id -u)

if [ USER -ne 0 ]
then
    echo "ERROR: unauthorized user"
    exit 1 #other than 0
fi

dnf list installed mysql