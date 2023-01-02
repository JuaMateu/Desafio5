#!/bin/bash

read -p "ingresa el numero A: " A 
read -p "ingresa el numero B: " B 
read -p "ingresa el numero C: " C

let MODAB=$A%$B
echo $MODAB

let DIVAC=$A/$C
echo $DIVAC

let EQ3=$(( 2*$B+3*($A-$C) ));
echo $EQ3


let EQ4=$(( $A*($B/$C) ));
echo $EQ4

let EQ5=$(( ($A*$C)%$B ));
echo $EQ5
