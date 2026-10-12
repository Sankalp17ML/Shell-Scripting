#!/bin/bash

lsblk -n -o NAME,SIZE,TYPE,MOUNTPOINTS | while read name size type mountpoint
do 
    echo "Device : $name"
    echo "Size : $size"
    echo "Type : $type"

    if [ -z "$mountpoint" ]; then 
        echo "Not mounted"
    else
        echo "Mounted at : $mountpoint"
    fi 

    echo "--------------------------------"
done