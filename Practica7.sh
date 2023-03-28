echo "Bienvenido a CleanKode SHOP "
echo ""
while true
do
echo "Ingresa el valor del producto 1"
read val1
echo "Ingresa el valor del producto 2"
read val2
echo "Ingresa el valor del producto 3"
read val3
echo "Ingresa el valor del producto 4"
read val4
echo "Ingresa el valor del producto 5"
read val5
echo "Ingresa el valor del producto 6"
read val6
total=$(($val1+$val2+$val3+$val4+$val5+$val6))

echo "Tu total es de: $total"
echo ""

echo "Elige el metodo de pago"
echo "1. Efectivo"
echo "2. Tarjeta de Credito"
echo "3. Tarjeta Departamental"
read opc
case $opc in
1)
    echo "Pago en efectivo"

    if [ $total -ge 2000 -a $total -lt 4000 ]; then
        descuento=$(($total * 10 / 100))
        final=$(($total - $descuento))
        echo "Descuento del 10%"
        echo "El total a pagar es de: $ $final"
    elif [ $total -ge 4000 -a $total -lt 6000 ]; then
        descuento=$(($total * 20 / 100))
        final=$(($total - $descuento))
        echo "Descuento del 20%"
        echo "El total a pagar es de: $ $final"
    elif [ $total -ge 6000 ]; then
       descuento=$(($total * 30 / 100))
        final=$(($total - $descuento))
        echo "Descuento del 30%"
        echo "El total a pagar es de: $ $final"
    else
      echo "sin descuento"
      echo "El total a pagar es de: $ $total" 
    fi
    ;;

2)
    echo "Tarjeta de Credito"
    monedero=$(($total*25/100))
    echo "Tienes $monedero en monedero electronico  que es el 25% de tu compra"
    echo "Elige a cuantos meses quieres diferir tu compra"
    echo "1. 6 MSI"
    echo "2. 12 MSI"
    read mes
    if [ $mes -eq 1 ]; then
     pago=$(($total/6))
     echo "Tu compra se difirio a 6 meses sin intereses"
     echo "El pago por mes es de : $ $pago"
     elif [ $mes -eq 2 ]; then
     pago=$(($total/12))
     echo "Tu compra se difirio a 12 meses sin intereses"
     echo "El pago por mes es de : $ $pago"
     else
        echo "opcion incorrecta"
     fi
    ;;
3)
    echo "Tarjeta de Departamental"
    monedero=$(($total*30/100))
    echo "Tienes $monedero en monedero electronico  que es el 25% de tu compra"
    echo "Elige a cuantos meses quieres diferir tu compra"
    echo "1. 12 MSI"
    echo "2. 18 MSI"
    read mes
    if [ $mes -eq 1 ]; then
     pago=$(($total/12))
     echo "Tu compra se difirio a 12 meses sin intereses"
     echo "El pago por mes es de : $ $pago"
     elif [ $mes -eq 2 ]; then
     pago=$(($total/18))
     echo "Tu compra se difirio a 18 meses sin intereses"
     echo "El pago por mes es de : $ $pago"
     else
        echo "opcion incorrecta"
     fi
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
