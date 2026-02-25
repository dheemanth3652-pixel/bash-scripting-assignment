#!/bin/bash

# -----------------------------------------
# Q4 - Automated Backup Script
# -----------------------------------------

if [ $# -eq 0 ]; then
    echo "Usage: ./q4_backup.sh <directory>"
    exit 1
fi

dir=$1
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

backup_name="backup_${timestamp}.tar.gz"

tar -czf $backup_name $dir

echo "Backup created: $backup_name"

# Delete backups older than 7 days
find . -name "backup_*.tar.gz" -mtime +7 -delete

echo "Old backups (older than 7 days) removed."
