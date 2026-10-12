#!/bin/bash

read -p "Enter a number : " number
if [ "$number" -gt 0 ]; then
echo "Positive number"
elif [ "$number" -eq 0 ]; then
echo "Zero"
else
echo "Negative number"
fi 



if [ $((number % 2)) -eq 0 ];then
echo "Even number"
else
echo "Odd number"
fi 

if [ "$number" -gt 100 ]; then
echo "Number is greater than hundred"
else
echo "Number is not greater than 100"
fi