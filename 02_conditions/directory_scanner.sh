#!/bin/bash

file_count=0
dir_count=0

for item in *
do
if [ -f "$item" ]; then
echo "FILE : $item"
file_count=$((file_count + 1))
elif [ -d "$item" ]; then
echo "DIRECTORY : $item"
dir_count=$((dir_count + 1))
fi
done

echo "TOTAL FILES: $file_count"
echo "TOTAL DIRECTORY COUNT : $dir_count"