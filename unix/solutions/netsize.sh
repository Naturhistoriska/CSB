#!/bin/bash

echo "Filename:"
echo "$1"
echo "Number of rows:"
wc -l < "$1"
echo "Number of columns:"
head -n 1 "$1" | tr -d ' ' | tr -d '\n' | wc -c
