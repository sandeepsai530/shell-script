#!/bin/bash

USER=$(id -u)
LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME=$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 ... $R FAILURE"
        exit 1
    else
        echo "$2 ... $G SUCCESS"
    fi
}

echo "script started executing at: $TIMESTAMP" &>>$LOG_FILE

if [ $USER -ne 0 ]
then
    echo "ERROR: unauthorized user"
    exit 1 #other than 0
fi

dnf list installed mysql &>>$LOG_FILE

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "installing MYSQL"
else
    echo "MYSQL is already ...  INSTALLED"
fi

dnf list installed git &>>$LOG_FILE

if [ $? -ne 0 ]
then # not installed
    dnf install git -y &>>$LOG_FILE
    VALIDATE $? "Installing GIT"
else
    echo "GIT is already INSTALLED"
fi