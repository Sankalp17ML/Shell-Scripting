#!/bin/bash


for process in bash systemd code python3
do
    if pgrep "$process" > /dev/null; then
        echo "$process is running"
    else
        echo "$process is not running"
    fi
done