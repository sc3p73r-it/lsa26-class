#!/bin/bash

HOST="google.com"

until ping -c 1 $HOST &> /dev/null
do
    echo "Waiting for network..."
    sleep 3
done

echo "Network is reachable!"
