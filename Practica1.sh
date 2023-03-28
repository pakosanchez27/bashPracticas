echo "Ingresa el año en que naciste (YYYY):"
read year

current_year=$(date +%Y)
age=$((current_year-year))

echo "Este año cumples $age años."