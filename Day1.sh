#!/bin/bash

echo "Current user is : $USER"

# Directories to back up
source_dir="/var/backups"

# Destination folder
dest_dir="/home/$USER/system_backups"

# Create destination folder if it doesn't exist
mkdir -p "$dest_dir"

# Create timestamp
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup filename
dest_file="$dest_dir/system_backup_$timestamp.tar.gz"

echo "System backup starting ..."

# Create the tar archive
sudo tar -czf "$dest_file" $source_dir

# Check the exit status of tar command
if [ $? -eq 0 ]; then
    echo "Backup done successfully!"
    echo "File saved at: $dest_file"
else
    echo "Backup failed!"
    exit 1
fi