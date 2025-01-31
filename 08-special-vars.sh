#!/bin/bash

echo "All variables to be passed: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "print the current working directory: $PWD"
echo "home directory of current user: $HOME"
echo "which user running the script: $USER"
echo "process id of current script: $$"
echo "process id of last command running in background: $!"
echo "prints the exit code: $?"