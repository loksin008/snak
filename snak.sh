#!/bin/bash

# Game settings
height=10     # Board height
width=20      # Board width
snake_char="O" # Snake character
food_char="X"  # Food character

# Snake variables
snake_x=5
snake_y=5
snake_length=3
snake_body=()
direction="RIGHT"

# Initialize food
food_x=$((RANDOM % width))
food_y=$((RANDOM % height))

# Set up terminal
stty -echo -icanon -icrnl -inlcr -onlcr -ixon -opost time 0 min 0

# Function to draw the game board
draw_board() {
    clear
    for ((i = 
