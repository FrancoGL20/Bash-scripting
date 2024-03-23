# !/bin/bash
# Ejercicios: calcular el área de un rectángulo, determinar si un número es mayor a otro y realizar la tabla de multiplicar de un número.
# FranciscoGL, Github: @FrancoGL20

# n1 es la base y n2 la altura
# n1 igual es el número al que se le hará la tabla de multiplicar
n1=0
n2=0

read -p "Ingrese el primer número: " n1
read -p "Ingrese el segundo número: " n2

# funcion que calcula el área de un rectángulo
area_rectangulo(){
    echo "El área del rectángulo con base $1 y altura $2 es: $(($1 * $2))"
}

# determinar si un numero es mayor a otro
es_mayor(){
    if [ $1 -gt $2 ]; then
        echo "$1 es mayor que $2"
    else
        echo "$2 es mayor que $1"
    fi
}

# tablas de multiplicar
tablas_multiplicar(){
    for i in {1..10}; do
        echo "$1 x $i = $(($1 * $i))"
    done
}

area_rectangulo $n1 $n2
es_mayor $n1 $n2
tablas_multiplicar $n1

exit 0