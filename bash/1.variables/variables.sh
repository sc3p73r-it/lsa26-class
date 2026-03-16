#!/bin/bash

source_file="/tmp/file1.txt"
target_dir="/home/sysadmin"

date=$(date +%Y-%m-%d)

bk_file="backup-$date.tar.gz"

tar -czf $target_dir/$bk_file $source_file

echo "Backup completed: $bk_file"
