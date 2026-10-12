#!/bin/bash

ps -eo pid,comm --no-headers | head -n 10 | while read pid comm
do 
    echo "PID : "$pid"  Process : "$comm" "
done
