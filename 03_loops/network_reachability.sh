#!/bin/bash 

for host in google.com github.com openai.com fakehiost123.invalid
do 
    if ping -c 1 $host; then
        echo "$host is reachable"
    else 
        echo "$host is not reachable"
    fi 
done