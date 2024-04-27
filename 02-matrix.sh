#!/bin/bash

# Define matrix dimensions
echo "Enter Row Size: "
read rows
echo "Enter column Size: "
read cols

# Initialize matrix as a 2D array
declare -A matrix

# Function to initialize the matrix
initialize_matrix() {
    for ((i=0; i<$rows; i++)); do
        for ((j=0; j<$cols; j++)); do
            matrix[$i,$j]=$((i * $cols + j + 1))
        done
    done
}

# Function to print the matrix
print_matrix() {
    for ((i=0; i<$rows; i++)); do
        for ((j=0; j<$cols; j++)); do
            printf "%4d " ${matrix[$i,$j]}
        done
        printf "\n"
    done
}

# Call function to initialize the matrix
initialize_matrix

# Call function to print the matrix
echo "Initial Matrix:"
print_matrix
