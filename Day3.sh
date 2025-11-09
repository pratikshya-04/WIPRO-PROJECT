#!/bin/bash

# Script to monitor logs

LOGS="/var/log/syslog"
ALERT_FILE="/tmp/alerts.txt"

# Check if alert file exists, else create it
if [ ! -f "$ALERT_FILE" ]; then
    echo "Alert file not found. Creating $ALERT_FILE..."
    touch "$ALERT_FILE"
fi

echo "Checking logs for errors..."
grep -i "error" "$LOGS" > "$ALERT_FILE"

# Check if the alert file is not empty
if [ -s "$ALERT_FILE" ]; then
    echo "Errors found in system logs! ->"
    cat "$ALERT_FILE"
else
    echo "No errors found."
fi
