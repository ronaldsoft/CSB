#!/bin/bash
echo "Rows:"
cat $1 | wc -l
echo "Cols:"
head -n 1 $1 | tr -d ' ' | tr -d '\n' | wc -c