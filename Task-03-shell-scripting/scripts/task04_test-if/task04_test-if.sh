#!/bin/bash

if [ -f "test.txt" ]; then
  echo "File exists."
else
  echo "Creating test.txt..."
  echo "This is a new file." > test.txt
fi


