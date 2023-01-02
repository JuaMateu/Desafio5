#!/bin/bash

function iterarFor() {
    i=0
    result=0;
    for i in {1..1000}
    do
       (( result+=i ))
    done
    echo "se utilizó un ciclo for, el resultado es: $result"
}
function iterarWhile() {
    i=1;
    result=0;
    while [ $i -le 1000 ];
    do
        (( result += i ))
        (( i++ ))
    done
    echo "se utilizó un ciclo for, el resultado es: $result"


 }

function iterarUntil() {
    i=1000;
    result=0;
    until [ $i -lt 0 ]
    do
        (( result+=i ));
        (( i-- ));
    done
    echo "se utilizó un ciclo for, el resultado es: $result"
}

function menu() {
    echo -n "Introduce una opción: "
    echo "1) iterar con for"
    echo "2) iterar con while"
    echo "3) iterar con until"
    echo "4) salir"
    read option
    case $option in
        1) iterarFor ;;
        2) iterarWhile ;;
        3) iterarUntil ;;
        4) exit ;;
        *) echo "Opción incorrecta" ; menu ;;
    esac
}

function main() {
    
    # ejecuta el menu de opciones
    menu
}
main