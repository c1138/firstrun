#!/bin/bash

if [ -z "$1" ]; then
  dir="."
else
  dir="$1"
fi

if [ ! -d "$dir" ]; then
  echo "'$dir' not catalog."
  exit 1
fi

find "$dir" -type f -exec du -h {} + 2>/dev/null | sort -rh