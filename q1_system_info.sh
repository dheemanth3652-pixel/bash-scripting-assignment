#!/bin/bash

# -----------------------------------------
# Q1 - System Information Script
# Description: Displays system information
# -----------------------------------------

echo "System Information Report"
echo "--------------------------"

echo "Hostname: $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Logged-in Users:"
who

echo "Memory Usage:"
free -h

echo "Disk Usage:"
df -h /

echo "Top 3 Memory Consuming Processes:"
ps aux --sort=-%mem | head -4

# Sample Output:
# Hostname: ubuntu
# Kernel Version: 5.x.x
