#!/bin/bash

# 1. Obtain the following results

# (i) To print the name of operating system
echo "Operating System: $(uname -s)"

# (ii) To print the login name
echo "Login Name: $(whoami)"

# (iii) To print the host name
echo "Host Name: $(hostname)"

# 2. Display the calendar for

# (i) Jan 2024
echo -e "\nCalendar for January 2024:"
cal 01 2024

# (ii) Feb 1995
echo -e "\nCalendar for February 1995:"
cal 02 1995

# (iii) 9th month of the year 7 A.D
echo -e "\nCalendar for September 7 A.D:"
cal 09 7

# (iv) For the current month
echo -e "\nCalendar for Current Month:"
cal

# (v) Current Date Day Abbreviation, Month Abbreviation along with year
echo -e "\nCurrent Date (Abbreviations) - Day: $(date +"%a"), Month: $(date +"%b"), Year: $(date +"%Y")"

# 3. Display the time in 12-Hour and 24-Hour Notations.
echo -e "\nCurrent Time (12-hour format): $(date +"%I:%M:%S %p")"
echo "Current Time (24-hour format): $(date +"%H:%M:%S")"

# 4. Display the Current Date and Current Time
echo -e "\nCurrent Date and Time: $(date +"%Y-%m-%d %H:%M:%S")"

# 5. Display the message “GOOD MORNING” in enlarged characters.
echo -e "\nDisplaying 'GOOD MORNING' in enlarged characters:"
figlet "GOOD MORNING"

