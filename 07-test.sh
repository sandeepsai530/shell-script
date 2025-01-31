#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "he is ROOT user"
else
    echo "he is NOT A ROOT user"
fi