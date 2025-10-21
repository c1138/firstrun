#!/bin/bash

sum=0
echo "Enter the numbers:"

while read number; do
  if [ "$number" -eq 0 ]; then
    break
  fi
  sum=$((sum + number))
done

echo "Sum: $sum"