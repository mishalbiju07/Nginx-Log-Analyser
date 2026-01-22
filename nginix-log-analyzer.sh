#!/bin/bash
if [ $# -lt 1 ];
then
    echo "Usage:$0 <log_file>"
    exit 1
fi
LOG_FILE="$1"
if [ ! -f "$LOG_FILE" ];
then
    echo "Log file $LOG_FILE not found"
    exit 1
fi
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2" - "$1 "requests"}'
echo ""
echo "Top 5 most requested paths:"
awk '{print $7}' "$awk '{print $}'$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - "$1 " requests"}'
echo ""
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'
echo ""
echo "Top 5 user agents:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{$1=$1; print $0 " requests"}'
