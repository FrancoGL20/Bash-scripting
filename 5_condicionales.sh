#!/bin/bash
# Tipos de condicionales
# FranciscoGL

edad=0
anio=0

read -p "Indique su edad: " edad
read -p "Indique el año actual: " anio

# Condicionales (()) para operaciones matematicas
if (( $edad >= 0 && $edad <= 18 )); then
    echo "La persona es adolescente"
elif (( $edad >= 19 && $edad <= 64 )); then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

# Condicionales [] para operaciones logicas
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

# Condición con operadores lógicos (-a, -o)
if [$edad -ge 18 -a $anio -eq 2023]; then
    echo "La persona puede votar"
fi

# Condición con operadores lógicos (&&, ||)
if (($edad >= 18 && $anio == 2023)); then
    echo "La persona puede votar"
fi