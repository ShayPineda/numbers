#! /bin/bash
# numbers.sh
# Your Name

# Prompt the user for input
echo "Enter a positive integer:"
read -r number

# Validate that it is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -le 0 ]; then
    echo "Error: Please enter a positive integer."
    exit 1
fi

for ((i=1; i<=number; i++))
do
    if (( i % 2 == 0 )); then
        echo "$i Even"
    else
        echo "$i Odd"
    fi
done


