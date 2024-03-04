#!/bin/bash



USERID=$(id -u)
NUMIN=$($#) ## Number of input installations
VALUES=$($@)

if [ $USERID -ne 0 ]
then
    echo "Please go with sudo user"
    exit 1
fi

VALIDATE(){

    if [$1 -ne 0]
    then 
        echo "Installation Failure"
     else
        echo "Installation Success"
    fi       
}
 
 for i in {1..$NUMIN}
 do 
    yum install $VALUES -y

## for i in {"git" "postfix"}
 ## do
 ## yum install $i -y
 VALIDATE $? $i
## done