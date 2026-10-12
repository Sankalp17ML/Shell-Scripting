#!/bin/bash

read -p "Enter file/directory path: " path

if [ ! -e "$path" ]; then
    echo "Path does not exist"

elif [ -d "$path" ]; then
    echo "This is a directory"

elif [ -f "$path" ]; then
    echo "This is a file"

    if [ -r "$path" ]; then
        echo "Readable: Yes"
    else
        echo "Readable: No"
    fi

    if [ -w "$path" ]; then
        echo "Writable: Yes"
    else
        echo "Writable: No"
    fi

    if [ -x "$path" ]; then
        echo "Executable: Yes"
    else
        echo "Executable: No"
    fi

else
    echo "Path exists, but it is not a regular file or directory"
fi
