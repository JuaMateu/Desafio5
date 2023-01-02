#!/bin/bash

HOUR=$(date +%H)

echo $HOUR

if (($HOUR > 8)) && (($HOUR < 15)); then
    echo "buenos dias"
elif (($HOUR > 15)) && (($HOUR < 20)); then
    echo "buenas tardes"
else
    echo "buenas noches"
fi
