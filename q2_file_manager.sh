#!/bin/bash

# -----------------------------------------
# Q2 - Menu Driven File Manager
# -----------------------------------------

while true
do
    echo "1. Create File"
    echo "2. Delete File"
    echo "3. List Files"
    echo "4. Exit"

    read -p "Enter choice: " choice

    case $choice in
        1)
            read -p "Enter filename to create: " fname
            touch "$fname"
            echo "File '$fname' created successfully."
            ;;
        2)
            read -p "Enter filename to delete: " fname
            if [ -f "$fname" ]; then
                cp "$fname" "$fname.bak"
                rm "$fname"
                echo "Backup created and file deleted."
            else
                echo "File does not exist."
            fi
            ;;
        3)
            ls
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
done

# Sample Inputs:
# Choice: 1
# Filename: test.txt
#
# Choice: 2
# Filename: test.txt
