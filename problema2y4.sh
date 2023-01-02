#!/bin/bash

FILE=$1
if [ -e "$FILE"   ]; then
    LINES=$(wc -l < $FILE); 
    echo "$FILE exist and have $LINES lines"
else
    echo "$FILE dosen't exist"
fi