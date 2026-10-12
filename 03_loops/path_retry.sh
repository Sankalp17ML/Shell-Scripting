#!/bin/bash

attempt=1
while [ "$attempt" -le 3 ]
do 
    read -p "ENTER A PATH: " path
    if [ -e "$path" ]; then 
        echo "Valid path found"
        break
    else 
        echo "Path does not exist"

        attempt=$((attempt + 1))

        if [ "$attempt" -le 3 ]; then
            echo "Attempts left : $((4-attempt))"
        else 
            echo "Limit Reached"
        fi 
    fi 
done