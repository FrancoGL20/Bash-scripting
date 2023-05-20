# !/bin/bash
# Manejo de los distintos tipos de listas en bash
# FranciscoGL, Github: @FrancoGL20

# lista de números
numeros=(1 2 3 4 5 6 7 8 9 10)

# lista de cadenas
cadenas=("hola" "mundo" "soy" "una" "lista" "de" "cadenas")
cadenas2=(Esto es una lista de cadenas)

# lista de conjuntos
conjuntos=({1..100} {A..Z} {a..z})

echo "Lista de números: ${numeros[*]}"