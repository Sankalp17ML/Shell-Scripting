#!/bin/bash

usage=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Disk usage: $usage%"

if [ "$usage" -ge 90 ]; then
    echo "Critical: Disk almost full"

elif [ "$usage" -ge 75 ]; then
    echo "Warning: Disk usage high"

else
    echo "Disk usage normal"
fi