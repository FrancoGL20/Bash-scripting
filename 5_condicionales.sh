#!/bin/bash
# Condicionales
# FranciscoGL

edad=0

read -p "Ingresar edad: " edad

if (( $edad >= 18 )); then # Esta sintaxis es para operaciones aritméticas
    echo "Mayor de edad"
fi

if [ $edad -ge 18 ]; then
    echo "Mayor de edad"
fi