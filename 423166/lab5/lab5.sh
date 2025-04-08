#!/bin/bash

# Task 1: Extract only ERROR messages along with their timestamps from a log file
echo "Task 1: ERROR messages with timestamps from log.txt"
awk '$2 == "ERROR" {print $1, $2, $4, $5}' log.txt
echo

# Task 2: Compute the average of each subject in a tab-separated CSV file
echo "Task 2: Average of each subject from the CSV file"
awk 'BEGIN {math_sum=0; science_sum=0; english_sum=0; count=0}
     NR > 1 {math_sum += $2; science_sum += $3; english_sum += $4; count++}
     END {print "Math Average:", math_sum/count, "\nScience Average:", science_sum/count, "\nEnglish Average:", english_sum/count}' file.txt
echo

# Task 3: Count occurrences of each IP in a server log
echo "Task 3: IP address count from server_log.txt"
awk '{ip[$1]++} END {for (i in ip) print i, ip[i]}' server_log.txt
echo

# Task 4: Swap the first and last words in lines of text
echo "Task 4: Swap the first and last words in input.txt"
sed -E 's/^([a-zA-Z]+) ([a-zA-Z]+) ([a-zA-Z]+)$/\3 \2 \1/' input.txt
echo

# Task 5: Remove duplicate words from a file
echo "Task 5: Remove duplicate words from file.txt"
awk '{for (i=1; i<=NF; i++) if (!seen[$i]++) printf "%s ", $i; print ""}' file.txt

