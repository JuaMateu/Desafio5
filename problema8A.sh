#!/bin/bash

function parYPrimo() {
    divisores=0
    read -p "introducí un número para ver si es par y si es primo: " numero;
    # operacionPar=$(($numero % 2 ))

    if [ $(($numero % 2 )) -eq 0 ];then
        echo "el numero es par"
    else    
        echo "el numero es impar"
    fi

    for((i=1 ; i<=$numero; i++))
    do
        if [  $(($numero % $i)) -eq 0 ];then
        echo "$i es divisor de $numero"
            (( divisores++ ))
        fi
    done

    if [  $divisores == 2 ];then
        echo "el numero $numero es primo, tiene $divisores divisores"
    else
        echo "el numero $numero no es primo, tiene $divisores divisores"
    fi
    
}

function tablasMultiplicar() {
    for i in {1..10}
    do
        echo "la tabla de $i es "
        for x in {1..10}
        do
        echo "$i x $x = `expr $i \* $x`   "
        done
        echo ""
        sleep 2;
    done
} 

function menu() {
        echo "Introduce una opción: "
        echo "1) pide un numero e indica si se trata de un numero par y si es primo"
        echo "2) muestra tabla de multiplicar"
        echo "3) salir"
    read option
    case $option in
        1) parYPrimo ;;
        2) tablasMultiplicar ;;
        3) exit ;;
        *) echo "Opción incorrecta" ; menu ;;
    esac
}

function main() {
    
    # ejecuta el menu de opciones
    menu
}
main