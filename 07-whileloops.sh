#!/bin/bash

file="test.txt"
while read -r line; do
    echo "Line from file: $line"
done < "$file"
