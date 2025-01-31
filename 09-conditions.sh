#!/bin/bash
NUMBER=$1

# -gt, -lt, -eq, -ge, -le

if [ $NUMBER -gt 100]
then
    echo "Given number is greater than 100"
else
    echo "Given number is less than or equals 100"
fi