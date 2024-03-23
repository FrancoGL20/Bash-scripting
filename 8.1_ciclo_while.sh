# !/bin/bash
#
# Francisco GL - @FrancoGL20

listadoNumeros=(1 2 3 4 5 6 7 8 9 10)
listadoNombres=(Diego, Juan, Luis, Carlos, Sofia)
listadoConjunto=({A..X} {1..35})

i=1

read -p "Ingrese un número: " numero

while [ $i -le 10 ]; do
    echo "$numero x $i = $((numero * i))"
    i=$((i + 1))
done