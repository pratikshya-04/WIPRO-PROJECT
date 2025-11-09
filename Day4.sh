#!/bin/bash

#Main maintenance suite menu

while true; do
    echo "1. System Backup"
    echo "2. System Update and Cleanup"
    echo "3. Log Monitoring"
    echo "4. Exit"
    read -p "Enter your choice: " num

    case $num in
        1) ./Day1.sh ;;
        2) ./Day2.sh ;;
        3) ./Day3.sh ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice! Please try again." ;;
    esac
done