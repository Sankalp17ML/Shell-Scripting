#!/bin/bash

read -p "Enter a path : " path

if [ ! -e "$path" ]; then
    echo "FILE DOES NOT EXIST"

elif [ -d "$path" ]; then
    echo "THIS IS A DIRECTORY, NOT A FILE"

elif [ -f "$path" ]; then

    if [ -r "$path" ] && [ -w "$path" ] && [ -x "$path" ]; then
        echo "FILE HAS FULL USER PERMISSIONS"

    elif [ -r "$path" ] && [ -x "$path" ]; then
        echo "FILE CAN BE READ AND EXECUTED"

    elif [ -r "$path" ]; then
        echo "FILE IS READABLE BUT NOT EXECUTABLE"

    else
        echo "FILE HAS LIMITED PERMISSIONS"
    fi

fi