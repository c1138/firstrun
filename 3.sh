#!/bin/bash

target=$((RANDOM % 100 + 1))
attempts=0

echo "Guess a number"

while true; do
  read -p "Turn " guess
  attempts=$((attempts + 1))

  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Enter the number."
    continue
  fi

  if [ "$guess" -lt "$target" ]; then
    echo ">"
  elif [ "$guess" -gt "$target" ]; then
    echo "<"
  else
    echo "$attempts tries were made"
    break
  fi
done
