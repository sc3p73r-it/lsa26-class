#!/bin/bash
# Directory will be looped and backed up.

BACKUP_DIR="/backup"
DATE=$(date +%F)

for dir in /etc /var/log/apt /var/log/installer
do
    tar -czf $BACKUP_DIR/$(basename $dir)-$DATE.tar.gz $dir
    echo "$dir backed up"
done
