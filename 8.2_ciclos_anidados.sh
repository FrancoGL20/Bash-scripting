# !/bin/bash
# Determine if a number is prime
# Francisco GL - @FrancoGL20

n=0
i=1
C=1

read -p "Ingrese un numero para determinar si es primo: " n

while [ $i -le $n ]; do
    i=$((i + 1))
    r=$((n % i))
    if [ $r -eq 0 ]; then
        C=$((C + 1))
    fi
done

if [ $C -eq 2 ]; then
    echo "El número $n es primo"
else
    echo "El número $n no es primo"
fi