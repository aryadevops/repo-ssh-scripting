#!/bin/bash



VALIDATE(){

if [ $1 -ne 0 ]
 then
    echo "$2 installation failure..."
else 
    echo "$2 Installation sucees...."   
fi

}

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
    echo "Please run this commond with root access" &>>file.log
    exit 1
fi

yum install git -y

VALIDATE $? "Git" &>>file.log

yum install postfix -y

VALIDATE $?  "Postfix"   