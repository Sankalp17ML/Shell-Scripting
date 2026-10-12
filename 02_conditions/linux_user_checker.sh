#!/bin/bash

read -p "Enter username: " username

if ! id "$username" > /dev/null 2>&1; then
    echo "User does not exist"

elif [ "$username" = "$USER" ]; then
    echo "This is the current user"

elif [ "$username" = "root" ]; then
    echo "This is the root user"

else
    echo "User exists"
fi