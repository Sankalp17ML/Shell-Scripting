#!/bin/bash

read -p "Enter Service name: " service

if systemctl is-active "$service" > /dev/null 2>&1; then
    echo "Service is running"
elif [ "$(systemctl show "$service" -p LoadState --vlaue 2>/dev/null)" != "not-found" ]; then
    echo "Service exists but is not running"
else 
    echo "Service not found or unavailable"
fi
