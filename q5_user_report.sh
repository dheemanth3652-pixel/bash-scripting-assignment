#!/bin/bash

# -----------------------------------------
# Q5 - User Account Reporter
# -----------------------------------------

echo "Username | UID | Home Directory | Shell"
echo "-----------------------------------------"

awk -F: '{print $1 " | " $3 " | " $6 " | " $7}' /etc/passwd

echo ""
echo "Users with UID 0 (Root Privileges):"

awk -F: '$3==0 {print $1}' /etc/passwd

echo ""
echo "Total Users: $(wc -l < /etc/passwd)"
