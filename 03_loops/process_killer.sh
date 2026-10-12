#!/bin/bash

read -p "Enter process name :" process

if pgrep "$process" > /dev/null 2>&1; then
    echo "Process is running"
    read -p "Do you want to stop the process: (yes/no)" ans
    if [ "$ans" == "yes" ]; then 
        pkill "$process" 
        echo "Process stopped"
    else 
        echo "Pocess was not stopped"
    fi
else 
    echo "Process is not running" 
fi 




