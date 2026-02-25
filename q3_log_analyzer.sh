#!/bin/bash

# -----------------------------------------
# Q3 - Log File Analyzer
# -----------------------------------------

if [ $# -eq 0 ]; then
    echo "Usage: ./q3_log_analyzer.sh <logfile>"
    exit 1
fi

logfile=$1

echo "Analyzing file: $logfile"

echo "Total Lines: $(wc -l < $logfile)"
echo "Error Count: $(grep -c ERROR $logfile)"
echo "Warning Count: $(grep -c WARNING $logfile)"

echo "Most Frequent IP:"
grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' $logfile | sort | uniq -c | sort -nr | head -1

# Test with different files:
# log1.txt → different error count
# log2.txt → different output
