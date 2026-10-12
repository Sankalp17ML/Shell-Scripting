#!/bin/bash


for dir in ~/Documents/*/
do
    size=$(du -sh "$dir" | awk '{print $1}')

    echo "Directory : $dir"
    echo "Size : $size"
    echo "-------------"
done 

