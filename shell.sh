#!/bin/bash
# Shell script to calculate LCM of two integers

# Function to calculate GCD using Euclidean algorithm
gcd() {
    local a=$1
    local b=$2
    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $((a < 0 ? -a : a))  # Return absolute value
}

# Function to calculate LCM
lcm() {
    local a=$1
    local b=$2
    if [ $a -eq 0 ] || [ $b -eq 0 ]; then
        echo 0
    else
        local gcd_val
        gcd_val=$(gcd "$a" "$b")
        echo $(( (a < 0 ? -a : a) * (b < 0 ? -b : b) / gcd_val ))
    fi
}

# Read two integers from user
read -p "Enter first integer: " num1
read -p "Enter second integer: " num2

# Validate inputs (must be integers)
if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid integers."
    exit 1
fi

# Calculate and display LCM
result=$(lcm "$num1" "$num2")
echo "LCM of $num1 and $num2 is: $result"

