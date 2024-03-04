#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F)
SCRIPTNAME=$0
LOGDIR=home/centos/shell-script-logs
LOGFILE=$LOGDIR/$SCRIPTNAME-$DATE.log
R="\e[31m"
N="\e[0m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " Installation of $2 is $R Failure...$N"
        exit 1
    else
       echo -e " Installation of $2 is $G Success...$N"  
    fi     
}

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR$N: Please go with Sudo Access."
    exit 1
fi    

for i in $@
    do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo -e "$Y $i is not installed$N. We can installing now.."
        yum install $i -y &>>$LOGFILE
        VALIDATE $? $i
        
     else   
         echo -e "$B $i is Already installed.$N"
    fi
    done
