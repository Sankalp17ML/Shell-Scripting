#!/bin/bash

for cmd in git python3 code docker
do
    if command -v "$cmd" > /dev/null; then
        echo "$cmd is installed"
    else 
        echo "$cmd is not installed"
    fi
done 