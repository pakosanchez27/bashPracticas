#!/bin/bash

function contar_pares {
    count=0
    i=2
    while ((i < 1000)); do
        ((count++))
        i=$((i + 2))
    done
    echo "Hay $count valores pares entre 0 y 1000 (sin incluir el 0 y el 1000)."
}

function contar_impares {
    count=0
    i=1
    while ((i < 1000)); do
        ((count++))
        i=$((i + 2))
    done
    echo "Hay $count valores impares entre 0 y 1000 (sin incluir el 0 y el 1000)."
}

function imprimir_sucesion {
    read -p "Cuál es el valor inicial de la sucesión: " inicial
    read -p "Cuál es el valor final de la sucesión: " final
    read -p "Cuál será el incremento: " incremento

    echo "La sucesión es:"
    i=$inicial
    while ((i <= final)); do
        echo $i
        i=$((i + incremento))
    done
}

function mostrar_multiplos_y_contiene {
    echo "Los valores son:"
    i=0
    while ((i <= 5000)); do
        if ((i % 3 == 0)) || [[ $i == *"3"* ]]; then
            echo -n "$i "
        fi
        ((i++))
    done
    echo

}

function mostrar_multiplos_o_contiene {
    echo "Ingrese un número:"
    read num

    i=0
    while true; do
        if ((i > 5000)); then
            break
        fi

        if ((i % num == 0)) || [[ "$i" == *"$num"* ]]; then
            echo "$i"
        fi

        ((i++))
    done
}

function contar_vocales_y_consonantes {
vocales=0
consonantes=0
repetida=''

echo "Ingresa 8 letras del alfabeto:"

i=1
while [ $i -le 8 ]
do
  read -n 1 letra
  echo

  if [[ $letra =~ [aeiouAEIOU] ]]; then
    ((vocales++))
  elif [[ $letra =~ [a-zA-Z] ]]; then
    ((consonantes++))
  fi

  if [[ ${letras:0:i-1} =~ $letra ]]; then
    repetida=$letra
  fi

  ((i++))
done

echo "Hay $vocales vocales y $consonantes consonantes."
if [[ $repetida ]]; then
  echo "La letra '$repetida' se repitió."
fi

}
while true; do
    echo "Menú:"
    echo "1.- Muestra al usuario cuántos valores pares se encuentran entre 0 y 1000 (no se incluye el 0 ni el 1000)"
    echo "2.- Muestra al usuario cuántos valores impares se encuentran entre el 0 y el 1000 (no se incluye el 0 ni el 1000)"
    echo "3.- Pide al usuario que ingrese cuál será
el valor inicial de una sucesión de valores a imprimir, pide cuál será el valor final y cuál será el incremento"
    echo "4.- Muestra al usuario todos los valores numéricos que se encuentran entre el 0 y el 5000 que son múltiplos de 3 o que contienen el número 3"
    echo "5.- Muestra al usuario todos los valores numéricos que se encuentran entre el 0 y el 5000 que son múltiplos o que contienen el valor que el usuario ingrese"
    echo "6.- Pide al usuario que ingrese 8 letras del abecedario, muestra al final cuántas son vocales y cuántas son consonantes, muestra también si alguna de las letras ingresadas se repite"

    read -p "Elige una opción (1-6): " option

    case $option in
    1)
        contar_pares
        ;;
    2)
        contar_impares
        ;;
    3)
        imprimir_sucesion
        ;;
    4)
        mostrar_multiplos_y_contiene
        ;;
    5)
        mostrar_multiplos_o_contiene
        ;;
    6)
        contar_vocales_y_consonantes
        ;;
    *)
        echo "Opción inválida"
        ;;
    esac

    read -p "¿Deseas realizar otra operación? (s/n): " choice
    if [[ $choice != "s" ]]; then
        break
    fi
done
