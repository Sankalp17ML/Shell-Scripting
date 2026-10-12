#!/bin/bash

for cmd in git curl vim tree
do
    if dpkg -s "$cmd" > /dev/null 2>&1; then
        echo "$cmd is installed"
    else 
        echo "$cmd is not installed" 
    fi 
done 