echo "Ingresa el primer número:"
read num1

echo "Ingresa el segundo número:"
read num2

echo "Ingresa el tercer número:"
read num3

# Ordenar los números de menor a mayor utilizando condicionales if
if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]; then
  menor=$num1
  if [ $num2 -lt $num3 ]; then
    medio=$num2
    mayor=$num3
  else
    medio=$num3
    mayor=$num2
  fi
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]; then
  menor=$num2
  if [ $num1 -lt $num3 ]; then
    medio=$num1
    mayor=$num3
  else
    medio=$num3
    mayor=$num1
  fi
else
  menor=$num3
  if [ $num1 -lt $num2 ]; then
    medio=$num1
    mayor=$num2
  else
    medio=$num2
    mayor=$num1
  fi
fi

# Imprimir los números ordenados
echo "Los números ordenados de menor a mayor son: "$menor" "$medio" "$mayor