#!/bin/bash

LOGFILE="/var/log/maintenance.log"
{
    echo "System Update at $(date)"
    sudo apt update -y && sudo apt upgrade -y
    sudo apt autoremove -y && sudo apt autoclean -y
    echo "Update Completed at $(date)"
} >> "$LOGFILE" 2>&1

if [ $? -eq 0 ]; then
    echo "System update successful. Log saved to $LOGFILE"
    cat $LOGFILE
else
    echo "System update failed. Check $LOGFILE for details."
fi
