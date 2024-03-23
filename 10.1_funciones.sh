# !/bin/bash
# 
# FranciscoGL, Github: @FrancoGL20

n1=0
n2=0

read -p "Ingrese el primer número: " n1
read -p "Ingrese el segundo número: " n2

# Función que recibe dos parámetros y realiza la suma de los mismos
realizar_suma(){
    echo "La suma de $1 y $2 es: $(($1 + $2))"
}

realizar_suma $n1 $n2