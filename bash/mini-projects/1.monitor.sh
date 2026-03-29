#!/bin/bash
#If the disk usage exceeds 80%, an alert will be displayed.

THRESHOLD=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ $usage -ge $THRESHOLD ]
then
    echo "WARNING: Disk usage is ${usage}%"
else
    echo "Disk usage is normal: ${usage}%"
fi
