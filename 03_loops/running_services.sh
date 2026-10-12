#!/bin/bash

systemctl list-units --type=service --state=running --no-legend --no-pager | head -n 10 | while read unit load active sub rest
do
    echo "Service : $unit "
    if [ "$sub" = "running" ]; then 
        echo "State : Running"
    else 
        echo "State: Not Running"
    fi 
    echo "---------------------------" 
done