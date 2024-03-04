#!/bin/bash

USERID=$(id -u)
R="\e[31m"
N="\e[0m"
G="\e[32m"
Y="\e[33m"


if [$USERID -ne 0]
then
    echo -e "$R ERROR$N: Please go with Sudo Access."
    exit 1
fi    
