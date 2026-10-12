#!/bin/bash

read -p "Enter package name: " package
read -p "Enter process name: " process

if ! dpkg -s "$package" > /dev/null 2>&1; then
    echo "Package is not installed"

elif pgrep "$process" > /dev/null 2>&1; then
    echo "Package is installed and process is running"

else
    echo "Package is installed but process is not running"
fi