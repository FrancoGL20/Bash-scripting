# !/bin/bash
# Ciclos for y while
# FranciscoGL, Github: @FrancoGL20

# lista de números
numeros=(1 2 3 4 5 6 7 8 9 10)

# Ciclo for
# para cada numero en la lista de números
for numero in ${numeros[@]}
do
    echo "Número: $numero"
done

# Ciclo while
i=0
# mientras i sea menor que el tamaño de la lista de números
while [ $i -lt ${#numeros[@]} ]
do
    echo "Número: ${numeros[$i]}"
    i=$((i+1))
    # Otra forma de incrementar i
    # let i++ 
    # Otra forma de incrementar i
    # ((i++))
done

# Ciclo until
i=0
# hasta que i sea igual al tamaño de la lista de números
until [ $i -eq ${#numeros[@]} ]
do
    echo "Número: ${numeros[$i]}"
    i=$((i+1))
    # Otra forma de incrementar i
    # let i++ 
    # Otra forma de incrementar i
    # ((i++))
done

exit 0