while true
do
echo "Elige una opcion"
echo "1. Tabla del 3"
echo "2. Tablas de multiplicar"
echo "3. Tablas del 1 al 10"
echo "4. Suma de valores"
read opc

case $opc in

1)
    echo "Tabla de multiplicar del 3"
    i=1
    while [ $i -le 10 ]
    do
        echo "3 x $i = $((3*i))"
        i=$((i+1))
    done    
;;

2)
    echo "Ingresa el valor de la tabla que deseas"
    read valor
    i=1
     while [ $i -le 10 ]
    do
        echo "$valor x $i = $((valor*i))"
        i=$((i+1))
    done  
;;

3)
    echo "Tablas de 1 al 10"
    i=1

    while [ $i -le 10 ]
    do
        echo "Tabla del $i"
        j=1
        while [ $j -le 10 ]
        do
            resultado=`expr $i \* $j`
            echo "$i x $j = $resultado"
            j=`expr $j + 1`
        done
        echo ""
        i=`expr $i + 1`
     done   
;;

4)
    i=1
    suma=0
    while [ $i -le 8 ]
    do
    echo "ingresa el valor $i"
    read valor
    suma=$(($suma+$valor))
    i=`expr $i + 1`
    done
    echo "la suma de los valores es $suma"
;;

*)
 
    echo "Opcion incorrecta"

    ;;
esac    
 echo "¿Deseas volver a comprar?"
 echo "1.Si"
 echo "2.No"
    read respuesta
    
    if [ "$respuesta" != "1" ]; then
        break
    fi
done