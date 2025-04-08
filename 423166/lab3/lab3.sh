#!/bin/bash

# Task 1: Check if the given number is Even or Odd
echo "Task 1: Check if the number is Even or Odd"
read -p "Enter a number: " num
if [ $((num % 2)) -eq 0 ]; then
  echo "$num is Even."
else
  echo "$num is Odd."
fi

echo

# Task 2: Check if the given year is Leap Year or not
echo "Task 2: Check if the year is Leap Year or not"
read -p "Enter a year: " year
if [ $((year % 4)) -eq 0 ]; then
  if [ $((year % 100)) -eq 0 ]; then
    if [ $((year % 400)) -eq 0 ]; then
      echo "$year is a Leap Year."
    else
      echo "$year is not a Leap Year."
    fi
  else
    echo "$year is a Leap Year."
  fi
else
  echo "$year is not a Leap Year."
fi

echo

# Task 3: Find the factorial of a number
echo "Task 3: Find the Factorial of a Number"
read -p "Enter a number: " num
factorial=1
for (( i=1; i<=num; i++ ))
do
  factorial=$((factorial * i))
done
echo "Factorial of $num is $factorial."

echo

# Task 4: Swap Two Integers
echo "Task 4: Swap Two Integers"
read -p "Enter the first number: " a
read -p "Enter the second number: " b
temp=$a
a=$b
b=$temp
echo "After swapping, the first number is $a and the second number is $b."

echo

# Task 5: Compute GCD & LCM of Two Numbers
echo "Task 5: Compute GCD & LCM of Two Numbers"
read -p "Enter the first number: " a
read -p "Enter the second number: " b

# Calculate GCD using Euclidean algorithm
x=$a
y=$b
while [ $y -ne 0 ]; do
  temp=$y
  y=$((x % y))
  x=$temp
done
gcd=$x

# Calculate LCM
lcm=$(( (a * b) / gcd ))

echo "GCD of $a and $b is $gcd"
echo "LCM of $a and $b is $lcm"

