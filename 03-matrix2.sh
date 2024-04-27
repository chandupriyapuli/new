#!/bin/bash

# Function to read matrix dimensions from the user
read_matrix_dimensions() {
    read -p "Enter number of rows: " rows
    read -p "Enter number of columns: " cols
}

# Function to initialize the matrix
initialize_matrix() {
    for ((i=0; i<$rows; i++)); do
        for ((j=0; j<$cols; j++)); do
            read -p "Enter element at position ($((i+1)),$((j+1))): " matrix[$i,$j]
        done
    done
}

# Function to print the matrix
print_matrix() {
    for ((i=0; i<$rows; i++)); do
        for ((j=0; j<$cols; j++)); do
            printf ${matrix[$i,$j]}
        done
        printf "\n"
    done
}

# Main program

# Read matrix dimensions from the user
read_matrix_dimensions

# Initialize matrix
initialize_matrix

# Print the matrix
echo "Matrix:"
print_matrix
