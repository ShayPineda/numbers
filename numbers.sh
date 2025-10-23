#! /bin/bash
# numbers.sh
# Your Name

# Prompt the user for input
echo "Enter a positive integer:"
read -r number

# Validate that the input is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -le 0 ]; then
    echo "Error: Please enter a positive integer."
    exit 1
fi

# Loop from 1 to the user’s number
for ((i=1; i<=number; i++))
do
    if (( i % 2 == 0 )); then
        echo "$i Even"
    else
        echo "$i Odd"
    fi
done


