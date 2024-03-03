#!/bin/bash

USERID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
 then
    echo "installation failure..."
else 
    echo "Installation sucees...."   
fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run this commond with root access"
    exit 1
fi

yum install git -y

VALIDATE $?

yum install postfix -y

VALIDATE $?     