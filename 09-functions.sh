#!/bin/bash

USERID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
 then
    echo "$2 installation failure..."
else 
    echo "$2 Installation sucees...."   
fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run this commond with root access"
    exit 1
fi

yum install git -y

VALIDATE $? "Git"

yum install postfix -y

VALIDATE $?  "Postfix"   