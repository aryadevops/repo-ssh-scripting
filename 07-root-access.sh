#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then

    echo "Error :: The User is not a root user, u can run this command with root user"
    exit 1 ## we can confirm here to exit from the program.
 fi   

 yum install git -y

  if [ $? -ne 0 ]
  then
    echo "installation failure..."
  else
    echo "installation sucess..."  

 fi

 yum install postfix -y
 
  if [ $? -ne 0 ]
  then
    echo "installation failure..."
  else
    echo "installation sucess..."  

 fi
