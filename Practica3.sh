echo "Ingrese un valor entero:"
read num

if ((num == 0)); then
  echo "El número ingresado es cero."
elif ((num % 2 == 0)); then
  echo "El número ingresado es par."
else
  echo "El número ingresado es impar."
fi