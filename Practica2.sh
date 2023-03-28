echo "ingresa el tamaño en Petabytes"
read valor

tb=$(($valor * 1024))
gb=$(($tb * 1024))
Mb=$(($gb * 1024))

echo "El valor $valor en TB es: $tb tb"
echo "El valor $valor en GB es: $gb gb"
echo "El valor $valor en MB es: $Mb mb"
