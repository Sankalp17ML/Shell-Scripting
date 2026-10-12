#!/bin/bash

total=$(free -m | awk '/^Mem:/ {print $2}')
used=$(free -m | awk '/^Mem:/{print $3}')

usage=$((used * 100 / total))

echo "Total RAM : $total MB"
echo "Used RAM : $used MB"
echo "Memory usage : $usage%"

if [ "$usage" -ge 80 ]; then
    echo "Warning : High memory usage"

elif [ "$usage" -ge 60 ]; then
    echo "Memory usage is moderate"

else
    echo "Memory usage is normal"
fi 

