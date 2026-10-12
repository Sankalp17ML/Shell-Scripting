#!/bin/bash

df -h --output=target,pcent | tail -n +2 | while read mount usage
do
    echo "$mount : $usage"
    percent=$(echo "$usage" | tr -d "%")
    if [ "$percent" -ge 80 ]; then
        echo "Warning"
    else
        echo  "OK"
    fi 
done