#!/bin/bash

# Function to count files in the current directory
count_files() {
    local file_count=$(ls | wc -l)
    echo "$file_count"
}

# Function to validate input is a number
is_number() {
    [[ "$1" =~ ^[0-9]+$ ]]
}

# Main game function
guessing_game() {
    local total_files=$(count_files)
    
    echo "Welcome to the Guessing Game!"
    echo "Try to guess the number of files in the current directory."
    
    local user_guess
    local guess_status=false
    
    while [ "$guess_status" = false ]; do
        read -p "Enter your guess (number of files): " user_guess
        
        # Validate input is a number
        if ! is_number "$user_guess"; then
            echo "Error: Please enter a valid number."
            continue
        fi
        
        # Compare guess to actual file count
        if [ "$user_guess" -lt "$total_files" ]; then
            echo "Too low! Try again."
        elif [ "$user_guess" -gt "$total_files" ]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files: $total_files"
            guess_status=true
        fi
    done
}

# Run the game
guessing_game