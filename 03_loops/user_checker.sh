#!/bin/bash

for cmd in root $USER nobody fakeuser123
do 
    if id "$cmd" > /dev/null 2>&1; then
        echo "$cmd exists"
    else
        echo "$cmd not exists"
    fi
done 