For any coding/scripting we need to know:
1. Varibales
2. Datatypes
3. Loops
4. Conditions
5. Functions

Varibales declared by var1=sandeep - no space between =
to print the variables use $var1
to print the variables as arguments - do not provide values in the script
read var1 - keyword is used to read the values from command line
read -s var1 - this will not display the value that entered for var1 on console. refer 04 script

Dataypes:
integer: number
float: decimal number
boolean: true/false
string: text
array: (devops, aws, docker)
arraylist: [devops, aws, docker]
map: name: devops , duration: 120hrs

for arrays/arraylist: index starts from 0 
MOVIES=(devops, aws, docker)
to display the first value use $MOVIES[0]

Special variables:
------------------
To print all the variables use $@
To print each value use $1 $2
Number of variables passed $#
print the script name: $0
print the current working directory: $PWD
Home directory of current user: $HOME
Which user running the script: $USER
process id of current script: $$
process id of last command in background: $!

Functions:
----------
what is function- take some input and do something. DRY - Dont Repeat Yourself
Functions used to avoid the repeated tasks.
