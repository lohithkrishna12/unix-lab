#!/bin/bash

# Task 1: Find all lines containing the word "error" in a log file (log.txt)
echo "Task 1: Lines containing 'error' in log.txt"
grep "error" log.txt
echo

# Task 2: Count the occurrences of the word "success" in a file (data.txt)
echo "Task 2: Count of the word 'success' in data.txt"
grep -o "success" data.txt | wc -l
echo

# Task 3: Extract all lines from a file (records.txt) that start with a digit
echo "Task 3: Lines starting with a digit in records.txt"
grep "^[0-9]" records.txt
echo

# Task 4: Display all lines in file.txt that do not contain the word "failed"
echo "Task 4: Lines that do not contain the word 'failed' in file.txt"
grep -v "failed" file.txt
echo

# Task 5: Find all .txt files in the current directory that contain the word "TODO"
echo "Task 5: .txt files containing the word 'TODO'"
grep -l "TODO" *.txt

