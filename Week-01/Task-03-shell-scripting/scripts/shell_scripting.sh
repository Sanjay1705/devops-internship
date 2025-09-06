#!/bin/bash

echo "Starting Shell Scripting Tasks..."

# Task 1: Print Hello
echo "Hello, Linux!"

# Task 2: Favorite programming language
language="Python"
echo "My favorite programming language is $language"

# Task 3: Ask for age
echo "Enter your age:"
read age
echo "You are $age years old."

# Task 4: Check if test.txt exists
if [ -f "test.txt" ]; then
  echo "File exists."
else
  echo "Creating test.txt..."
  echo "This is a new file." > test.txt
fi

# Task 5: Count from 1 to 10
for i in {1..10}; do
  echo "Number: $i"
done

# Task 6: Print name 5 times
for i in {1..5}; do
  echo "Sanjay Mehra"
done

# Task 7: Check if directory exists
dir="my_folder"
if [ -d "$dir" ]; then
  echo "Directory '$dir' already exists."
else
  echo "Creating directory '$dir'..."
  mkdir "$dir"
fi

# Task 8: List all files
echo "Files in current directory:"
ls -l

# Task 9: Greet user
echo "Enter your name:"
read name
echo "Hello, $name!"

# Task 10: Explore man bash
echo "Use 'man bash' to explore built-in commands."

echo "Shell scripting tasks completed."

