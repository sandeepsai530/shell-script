#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

SOURCE_DIR="/home/ec2-user/shell-files"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

USERID=$(id -u)

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then
    echo -e "$R NOT A ROOT USER"
    exit 1
else
    echo -e "$G ROOT USER"
fi
}

CHECK_ROOT

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

FILES_TO_DELETE=$(find $SOURCE_DIR -name . -mtime +14)
echo "$FILES_TO_DELETE"

