#!/bin/bash

ip -br link | while read interface state rest
do
    echo "Interface: $interface  Status: $state"

    if [ "$state" = "UP" ]; then
        echo "Network interface is active"
    else
        echo "Network interface is not active"
    fi

    echo
done
