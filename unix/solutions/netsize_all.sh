#!/bin/bash

FILES=$(find ../data/Saavedra2013 -type f -name '*.txt')
for f in $FILES 
do
    myrow=$(wc -l < "$f")
    mycol=$(head -n 1 "$f" | tr -d ' ' | tr -d '\n' | wc -c)
    echo "$f" "$myrow" "$mycol"
done
