# Variables
repetir=true

# Funciones
# Funcion sumar 8 numeros
fun_ocho_num() {
    i=1
    suma=0
    while [[ $i -le 8 ]]; do
        echo "ingresa el numero $i"
        read num
        suma=$((suma + num))
        i=$((i + 1))
    done
    echo $suma
}
# funcion sumar numeros del usuario
fun_sumar_num() {
    echo "¿Cunatos numero deseas sumar?"
    read valor
    i=1
    suma=0
    while [[ $i -le valor ]]; do
        echo "ingresa el numero $i"
        read num
        suma=$((suma + num))
        i=$((i + 1))
    done
    echo $suma

}
# funcion sumar enteros
fun_sumar_enteros() {
    echo "¿Cuántos valores enteros desea ingresar? (entre 5 y 10) "
    read valor
    while ((valor < 5 || valor > 10)); do
        read -p "Por favor, ingrese un número entre 5 y 10: " n
        echo "Por favor, ingrese un número entre 5 y 10: "
        read valor
    done

    i=1
    suma=0
    while [[ $i -le valor ]]; do
        echo "ingresa el numero $i"
        read num
        suma=$((suma + num))
        i=$((i + 1))
    done
    echo $suma
}
# funcion par e impar
fun_par_impar() {
    i=1
    pares=0
    inpares=0
    while [[ $i -le 8 ]]; do
        echo "ingresa el numero $i"
        read num
        i=$((i + 1))
        if [ $(($num % 2)) -eq 0 ]; then
            pares=$((pares + 1))
        else
            inpares=$((inpares + 1))
        fi
    done
    echo "los numeros pares son: $pares"
    echo "los numeros inpares son: $inpares"

}
# funcion par e impar 2
fun_par_impar_2() {
    i=1
    pares=0
    inpares=0
    menor=0
    mayo=0
    while [[ $i -le 8 ]]; do
        echo "ingresa el numero $i"
        read num
        i=$((i + 1))
        if [ $(($num % 2)) -eq 0 ]; then
            pares=$((pares + 1))
        else
            inpares=$((inpares + 1))
        fi
        if [ $num -le 10 ]; then
            menor=$((menor + 1))
        else
            mayo=$((mayo + 1))
        fi
    done
    echo "los numeros pares son: $pares"
    echo "los numeros inpares son: $inpares"
    echo "los numeros menor a 10 son: $menor"
    echo "los numeros mayor a 10 son: $mayo"
}
# funcion par e impar 3
fun_par_impar_3() {
    i=1
    pares=0
    inpares=0
    u=0
    d=0
    c=0

    while [[ $i -le 8 ]]; do
        echo "ingresa el numero $i"
        read num
        i=$((i + 1))
        if [ $(($num % 2)) -eq 0 ]; then
            pares=$((pares + 1))
        else
            inpares=$((inpares + 1))
        fi

        if [ $num -le 10 ]; then
            u=$((u + 1))
        elif [ $num -le 99 ] && [ $num -gt 10 ]; then
            d=$((d + 1))
        else
            c=$((c + 1))
        fi
    done
    echo "los numeros pares son: $pares"
    echo "los numeros inpares son: $inpares"
    echo "las unidades son: $u"
    echo "las decenas son: $d"
    echo "las centenas son: $c"
}

# funcion rangos de edad
fun_rangos_edad() {

    i=1
    rango1=0 # Menor a 18
    rango2=0 # entre 18 y 35
    rango3=0 # entre 36 y 50
    rango4=0 # entre 51 y 65
    rango5=0 # mayores de 65

    while [ $i -le 8 ]; do
        echo "ingresa la edad de la persona $i"
        read edad
        i=$((i + 1))
        if [ $edad -le 18 ]; then
            rango1=$((rango1 + 1))
        elif [ $edad -gt 18 ] && [ $edad -le 35 ]; then
            rango2=$((rango2 + 1))
        elif [ $edad -gt 35 ] && [ $edad -le 50 ]; then
            rango3=$((rango3 + 1))
        elif [ $edad -gt 50 ] && [ $edad -le 65 ]; then
            rango4=$((rango4 + 1))
        else
            rango5=$((rango5 + 1))
        fi
    done

    echo " Las personas menores de 18 son : $rango1"
    echo " Las personas entre 18 y 35 son : $rango2"
    echo " Las personas entre 36 y 50 son : $rango3"
    echo " Las personas entre 51 y 65 son : $rango4"
    echo " Las personas mayoes de 65 son : $rango5"
}

fun_opc_ocho() {
   i=1
suma=0
multi=1
while [ $i -le 8 ]; do
    echo "Ingresa el número $i"
    read numero
    i=$((i + 1))
    if [ $(($numero % 2)) -eq 0 ]; then
        suma=$((suma + numero))
    else
        multi=$((multi * numero))
    fi
done
echo "La suma de los pares es: $suma"
echo "La multiplicación de los impares es: $multi"

}

fun_trabajadores() {
    # Definir salarios
salario1=100
salario2=150
salario3=250

# Inicializar contadores y acumuladores
count1=0
count2=0
count3=0
total1=0
total2=0
total3=0
i=0

while [ $i -lt 5 ]; do
    i=$((i + 1))

    echo "Ingrese el tipo de trabajador (1, 2 o 3) para el trabajador $i:"
    read tipo

    echo "Ingrese la cantidad de horas trabajadas por semana para el trabajador $i:"
    read horas

    # Calcular el salario semanal
    if [ $tipo -eq 1 ]; then
        salario=$((salario1 * horas))
        total1=$((total1 + salario))
        count1=$((count1 + 1))
    elif [ $tipo -eq 2 ]; then
        salario=$((salario2 * horas))
        total2=$((total2 + salario))
        count2=$((count2 + 1))
    elif [ $tipo -eq 3 ]; then
        salario=$((salario3 * horas))
        total3=$((total3 + salario))
        count3=$((count3 + 1))
    else
        echo "Tipo de trabajador inválido"
    fi
done

# Mostrar los resultados
echo "Se pagarán $total1 MXN a $count1 trabajadores tipo 1"
echo "Se pagarán $total2 MXN a $count2 trabajadores tipo 2"
echo "Se pagarán $total3 MXN a $count3 trabajadores tipo 3"
}

fun_productos() {
    i=1
total=0
max_precio=0
num_max_precio=0

while [ $i -le 6 ]; do
    echo "Ingresa el precio del producto $i:"
    read precio

    # Actualiza el máximo precio y su número de producto
    if [ $precio -gt $max_precio ]; then
        max_precio=$precio
        num_max_precio=$i
    fi

    total=$((total + precio))
    i=$((i + 1))
done

echo "El total a pagar es: $total"
echo "El precio mayor es: $max_precio y corresponde al producto número $num_max_precio."
}
# Inicializacion de while para repetir el programa
while [ "$repetir" = true ]; do

    # Menu
    echo "1. Sumar 8 valores enteros"
    echo "2. Sumar n valores enteros"
    echo "3. Sumar entre 5 y 10 valores enteros"
    echo "4. Determinar valores pares e impares"
    echo "5. Determinar pares, impares, y valores en rangos específicos"
    echo "6. Determinar pares, impares, unidades, decenas, y centenas"
    echo "7. Determinar edades en rangos específicos"
    echo "8. Sumar pares y multiplicar impares"
    echo "9. Calcular nómina de trabajadores"
    echo "10. Calcular total de compra de 6 productos"

    echo "Seleccione una opción (1-10)"
    read opcion

    # Inicializacion de la estrucutra case
    case $opcion in
    1)
        fun_ocho_num
        ;;
    2)
        fun_sumar_num
        ;;
    3)
        fun_sumar_enteros
        ;;
    4)
        fun_par_impar
        ;;
    5)
        fun_par_impar_2
        ;;
    6)
        fun_par_impar_3
        ;;
    7)
        fun_rangos_edad
        ;;
    8)
        fun_opc_ocho
        ;;
    9) 
        fun_trabajadores

        ;;
    10) 
        fun_productos
    ;;
    *)
        echo "opcion equivocada"
        ;;

    esac

    # Finalizacion de while
    echo "Deseas reperit el programa"
    echo "1. Si"
    echo "2. No"
    read res
    if [ $res -ne 1 ]; then
        repetir=false
    else
        repetir=true
    fi

done
