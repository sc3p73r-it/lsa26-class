#!/bin/bash

THRESHOLD=80

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is ${usage}%"
else
  echo "Disk usage is normal: ${usage}%"
fi
