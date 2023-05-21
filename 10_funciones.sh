# !/bin/bash
# Funciones
# FranciscoGL, Github: @FrancoGL20

# Parametros
saludar() {
    echo "Hola, $1"
}

saludar "Juan" # Salida: Hola, Juan

# Retorno de valores
sumar() {
    local total=$(($1 + $2))
    echo "$total"
}

sumar 5 3 # Salida: 8

# Variables locales
funcion() {
    local var="Hola"
    echo "$var"
}

funcion     # Salida: Hola
echo "$var" # Salida: vacio (ya que la variable fue local

# Ejecución condicional de funciones
es_par() {
    local numero=$1
    if ((numero % 2 == 0)); then
        echo "El número es par"
    else
        echo "El número es impar"
    fi
}

es_par 4 # Salida: El número es par
es_par 7 # Salida: El número es impar

# Recursividad
factorial() {
    local numero=$1
    if ((numero <= 1)); then
        echo 1
    else
        local ant=$((numero - 1))
        local temp=$(factorial $ant)
        echo $((numero * temp))
    fi
}

resultado=$(factorial 5)
echo "El factorial de 5 es $resultado" # Salida: El factorial de 5 es 120
