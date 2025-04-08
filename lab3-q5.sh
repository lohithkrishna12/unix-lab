#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b

# Save original values for LCM calculation
x=$a
y=$b

# Find GCD using Euclidean algorithm
while [ $b -ne 0 ]
do
  temp=$b
  b=$((a % b))
  a=$temp
done

gcd=$a
lcm=$(( (x * y) / gcd ))

echo "GCD of $x and $y is $gcd"
echo "LCM of $x and $y is $lcm"
