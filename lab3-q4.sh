#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b

echo "Before swap: a = $a, b = $b"

# Swapping using a temp variable
temp=$a
a=$b
b=$temp

echo "After swap: a = $a, b = $b"
