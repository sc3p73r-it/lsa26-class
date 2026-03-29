#!/bin/bash

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ $cpu -lt 50 ]
then
    echo "CPU usage normal"
elif [ $cpu -lt 80 ]
then
    echo "CPU usage moderate"
else
    echo "CPU usage HIGH"
fi
