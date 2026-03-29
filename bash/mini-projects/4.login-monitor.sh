#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Logged in users:"
    who
    sleep 5
    count=$((count+1))
done
