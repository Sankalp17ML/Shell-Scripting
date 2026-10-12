#!/bin/bash

ps -eo pid,comm,%cpu,%mem --sort=-%cpu --no-headers | head -n 5 |
while read pid process cpu memory 
do 
    echo "PID : $pid"
    echo "Process : $process"
    echo "CPU : $cpu"
    echo "Memory : $memory"
    echo "--------------------------------"
done 

