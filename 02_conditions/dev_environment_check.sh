#!/bin/bash

if ! command -v 'git' > /dev/null 2>&1; then

    echo "Git is not installed"

elif ! command -v 'python3' > /dev/null 2>&1; then

    echo "Python3 is not installed"

elif command -v 'code'  > /dev/null 2>&1 && ! pgrep code > /dev/null 2>&1; then

    echo "VS CODE is installed but not running"

else

    echo "Development is ready!"

fi


