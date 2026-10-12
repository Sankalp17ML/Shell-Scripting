#!/bin/bash

read -p "Enter process name : " name
count=1
while [ "$count" -le 5 ]
do 
    if pgrep "$name" > /dev/null 2>&1; then
        echo "Check $count : Code is running"
        
    else 
        echo "Check $count : Code is not running"
        

    fi

    sleep 2
    count=$((count + 1))

done
echo "Monitoring finished"


    