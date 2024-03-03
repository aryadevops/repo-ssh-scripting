#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then

    echo "Error :: The User is not a root user, u can run this command with root user"
    exit 1 ## we can confirm here to exit from the program.
 fi   

 yum install git -y