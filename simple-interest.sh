#!/bin/bash
# simple-interest.sh: Calculate simple interest

# Usage: ./simple-interest.sh principal rate time

if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "$principal * $rate * $time / 100" | bc -l)
echo "Simple Interest = $interest"
