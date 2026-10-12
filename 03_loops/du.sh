#!/bin/bash

for dir in ~/Documents/*/
do
    size=$(du -sm "$dir" | awk '{print $1}')
    echo "$dir : $size MB"
    if [ "$size" -ge 500 ]; then
        echo "Warning"
    else 
        echo "Ok" 
    fi 
done