#!/bin/bash

echo "Enter a Number"

read NUMBER

if [ $NUMBER -gt 10 ]
then
    echo "Given number is $NUMBER"

else
    echo "Given number is less then 10"   

fi     