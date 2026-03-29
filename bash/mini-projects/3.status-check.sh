#!/bin/bash
# Service will be restarted before running.

SERVICE="nginx"

status=$(systemctl is-active $SERVICE)

if [ "$status" != "active" ]
then
    echo "$SERVICE is not running. Restarting..."
    systemctl restart $SERVICE
else
    echo "$SERVICE is running normally"
fi
