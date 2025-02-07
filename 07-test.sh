#!/bin/bash

USERID=$(id -u)

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then
    echo "NOT A ROOT USER"
else
    echo "ROOT USER"
fi
}

CHECK_ROOT