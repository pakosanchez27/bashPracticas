
echo "Ingrese el valor del primer producto:"
read producto1

echo "Ingrese el valor del segundo producto:"
read producto2

echo "Ingrese el valor del tercer producto:"
read producto3

total=$(($producto1 + $producto2 + $producto3))

echo "El total de tu compra es: $"$total

if [ $total -lt 1000 ]; then
    descuento=$(($total - 200))
    echo "Tu descuento es de: $descuento"
elif [ $total -ge 1000 -a $total -lt 2000 ]; then
    descuento=$(($total - 300))
    echo "Tu descuento es de: $descuento"
else
    descuento=$(($total - 400))
    echo "Tu descuento es de: $descuento"
fi