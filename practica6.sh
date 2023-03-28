echo "Elige una opcion"
echo "1. Programa1"
echo "2. Programa2"
read res

if [ $res -eq 1 ]; then
    echo "Ingresa el valor 1"
    read a
    echo "Ingresa el valor 2"
    read b
    echo "Ingresa el valor 3"
    read c

    echo "Ingresa una opcion"
    echo "1. Asendente"
    echo "2. Desendente"
    read res2

    if [ $res2 -eq 1 ]; then #Desendente
        if [ $a -lt $b ] && [ $a -lt $c ]; then
            echo $a

            if [ $b -lt $c ]; then
                echo $b
                echo $c
            else
                echo $c
                echo $b
            fi

        elif [ $b -lt $a ] && [ $b -lt $c ]; then
            echo $b

            if [ $a -lt $c ]; then
                echo $a
                echo $c
            else
                echo $c
                echo $a
            fi

        else
            echo $c

            if [ $a -lt $b ]; then
                echo $a
                echo $b
            else
                echo $b
                echo $a
            fi
        fi
    elif [ $res2 -eq 2 ]; then # Desendente
        if [ $a -gt $b ] && [ $a -gt $c ]; then
            if [ $b -gt $c ]; then
                echo "$a $b $c"
            else
                echo "$a $c $b"
            fi
        elif [ $b -gt $a ] && [ $b -gt $c ]; then
            if [ $a -gt $c ]; then
                echo "$b $a $c"
            else
                echo "$b $c $a"
            fi
        else
            if [ $a -gt $b ]; then
                echo "$c $a $b"
            else
                echo "$c $b $a"
            fi
        fi
    else
        echo "Opcion incorrecta"
    fi

elif [ $res -eq 2 ]; then
    echo "Ingresa el valor 1"
    read a
    echo "Ingresa el valor 2"
    read b
    echo "Ingresa el valor 3"
    read c
    echo "Ingresa el valor 4"
    read d

    echo "Ingresa una opcion"
    echo "1. Asendente"
    echo "2. Desendente"
    read res2
    if [ $res2 -eq 1 ]; then
        if [ $a -gt $b ]; then
            temp=$a
            a=$b
            b=$temp
        fi

        if [ $b -gt $c ]; then
            temp=$b
            b=$c
            c=$temp
        fi

        if [ $c -gt $d ]; then
            temp=$c
            c=$d
            d=$temp
        fi

        if [ $a -gt $b ]; then
            temp=$a
            a=$b
            b=$temp
        fi

        echo "Los números ordenados de forma ascendente son: $a, $b, $c, $d"
    elif [ $res2 -eq 2 ]; then
        if [ $a -ge $b ] && [ $a -ge $c ] && [ $a -ge $d ]; then
            if [ $b -ge $c ] && [ $b -ge $d ]; then
                echo "$a $b $c $d"
            elif [ $c -ge $b ] && [ $c -ge $d ]; then
                echo "$a $c $b $d"
            else
                echo "$a $d $b $c"
            fi
        elif [ $b -ge $a ] && [ $b -ge $c ] && [ $b -ge $d ]; then
            if [ $a -ge $c ] && [ $a -ge $d ]; then
                echo "$b $a $c $d"
            elif [ $c -ge $a ] && [ $c -ge $d ]; then
                echo "$b $c $a $d"
            else
                echo "$b $d $a $c"
            fi
        elif [ $c -ge $a ] && [ $c -ge $b ] && [ $c -ge $d ]; then
            if [ $a -ge $b ] && [ $a -ge $d ]; then
                echo "$c $a $b $d"
            elif [ $b -ge $a ] && [ $b -ge $d ]; then
                echo "$c $b $a $d"
            else
                echo "$c $d $a $b"
            fi
        else
            if [ $a -ge $b ] && [ $a -ge $c ]; then
                echo "$d $a $b $c"
            elif [ $b -ge $a ] && [ $b -ge $c ]; then
                echo "$d $b $a $c"
            else
                echo "$d $c $b $a"
            fi
        fi
    else
        echo "Opcion incorrecta"
    fi

else
    echo "Opcion incorrecta"
fi
