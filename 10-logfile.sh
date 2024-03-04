#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e0m"


VALIDATE(){

if [ $1 -ne 0 ]
 then
    echo -e "$2 installation $R failure$N..."
else 
    echo -e "$2 Installation $G sucees$N...."   
fi

}

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
    echo "Please run this commond with root access" &>>file.log
    exit 1
fi

yum install git -y &>>file.log

VALIDATE $? "Git" 

yum install postfixxx -y &>>file.log

VALIDATE $?  "Postfix"   