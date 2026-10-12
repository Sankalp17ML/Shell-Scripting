#!/bin/bash

read -p "Enter command name: " cmd

if ! command -v "$cmd" > /dev/null 2>&1; then
    echo "Command not installed"

elif pgrep "$cmd" > /dev/null 2>&1; then
    echo "Command is installed and currently running"

else
    echo "Command is installed but not currently running"
fi