# !/bin/bash
# Programa que verifica si un número es primo
# FranciscoGL, Github: @FrancoGL20

numero=0
contador=0
i=1

# Pedir un número
read -p "Ingrese un número: " numero

# Verificar si el número es primo
while [ $i -le $numero ]; do
    if [ $((numero % i)) -eq 0 ]; then
        let contador++ 
    fi
    let i++
done

# Imprimir el resultado
if [ $contador -eq 2 ]; then
    echo "El número $numero es primo"
else
    echo "El número $numero no es primo"
fi