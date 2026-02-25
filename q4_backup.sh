#!/bin/bash

# -----------------------------------------
# Q4 - Advanced Backup Script
# -----------------------------------------

if [ $# -eq 0 ]; then
    echo "Usage: ./q4_backup.sh <directory>"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
    echo "Directory does not exist."
    exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_name="backup_${timestamp}.tar.gz"

echo "Creating backup..."
tar -czf $backup_name $dir

if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_name"
else
    echo "Backup failed."
fi

echo "Removing backups older than 7 days..."
find . -name "backup_*.tar.gz" -mtime +7 -delete

echo "Backup process completed."
