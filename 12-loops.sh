#!/bin/bash


R="\e[31m"
G="\e[32m"
N="\e[0m"
B="\e[34m"

USERID=$(id -u)
##NUMIN=$($#) ## Number of input installations


if [ $USERID -ne 0 ]
then
    echo "Please go with sudo user"
    exit 1
fi

VALIDATE(){

    if [$1 -ne 0]
    then 
        echo -e "Installation $R Failure $N"
     else
        echo -e "Installation $G Success $N"
    fi       
}
 
 for i in $@
 do 
    yum install $i -y >>File.log

## for i in {"git" "postfix"}
 ## do
 ## yum install $i -y
 VALIDATE $? $i
done
echo "Totall number of packages $#"
echo -e "The program $B $0 $N is $G successfully completed $G"