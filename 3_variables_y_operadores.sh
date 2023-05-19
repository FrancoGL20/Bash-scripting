#!/bin/bash
# Programa que permite ver, crear y operar variables
# FranciscoGL

parametro_1=40
parametro_2=10

echo "Parametro 1: $parametro_1, Parametro 2: $parametro_2"

echo "*** Operaciones aritméticas básicas ***"

echo "Suma: $((parametro_1 + parametro_2))"
echo "Resta: $((parametro_1 - parametro_2))"
echo "Multiplicación: $((parametro_1 * parametro_2))"
echo "División: $((parametro_1 / parametro_2))"
echo "Residuo: $((parametro_1 % parametro_2))"
echo "Exponencial: $((parametro_1 ** parametro_2))"

echo "*** Operaciones de comparación ***"

echo "Son iguales: $((parametro_1 == parametro_2))"
echo "Son diferentes: $((parametro_1 != parametro_2))"
echo "Mayor o igual: $((parametro_1 >= parametro_2))"
echo "Menor o igual: $((parametro_1 <= parametro_2))"
echo "Mayor: $((parametro_1 > parametro_2))"
echo "Menor: $((parametro_1 < parametro_2))"

echo "*** Operaciones lógicas ***"

echo "Operación AND: $((parametro_1 > parametro_2 && parametro_1 < parametro_2))"
echo "Operación OR: $((parametro_1 > parametro_2 || parametro_1 < parametro_2))"
echo "Negación: $((!parametro_1))"

echo "*** Operaciones de asignación ***"

echo "Asignación: $((parametro_1 = parametro_2))"
echo "Suma y asignación: $((parametro_1 += parametro_2))"

