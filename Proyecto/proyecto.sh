# !/bin/bash
# Proyecto: Menu de opciones que permita calcular el IMC, calcular el area de figuras geométricas y operaciones aritméticas
# FranciscoGL, Github: @FrancoGL20

opcion=0

calcular_imc() {
    local peso=0
    local altura=0

    # Leer los datos del usuario
    read -p "Ingrese su peso (kg): " peso
    read -p "Ingrese su altura (m): " altura

    # Validar que los datos no esten vacios
    if [ -z "$peso" ] || [ -z "$altura" ]; then
        echo "Los datos ingresados no son válidos"
        return 1
    fi

    # Calcular el IMC
    local imc=$(echo "scale=2; $peso / ($altura * $altura)" | bc -l) # scale=2: dos decimales, bc -l: libreria de calculo

    # Mostrar el resultado
    echo "Su IMC es: $imc"

    # Mostrar mensaje al usuario
    if (( $(echo "$imc < 18.5" | bc -l) )); then
        echo "Estas bajo de peso"
    elif (( $(echo "$imc >= 18.5 && $imc <= 24.9" | bc -l) )); then
        echo "Estas en tu peso ideal"
    else
        echo "Tienes sobrepeso"
    fi
}

area_figuras_geometricas() {
    local figura=""
    read -p "Ingrese la figura (cuadrado, triangulo, circulo): " figura
    if [ $figura == "cuadrado" ]; then
        local lado=0
        read -p "Ingrese el lado: " lado
        echo "El área del cuadrado es: $(($lado * $lado))"
    elif [ $figura == "triangulo" ]; then
        local base=0
        local altura=0
        read -p "Ingrese la base: " base
        read -p "Ingrese la altura: " altura
        local resultado=$(echo "scale=2; $base * $altura / 2" | bc -l)
        echo "El área del triangulo es: $resultado"
    elif [ $figura == "circulo" ]; then
        local radio=0
        read -p "Ingrese el radio: " radio
        echo "El área del circulo es: $(echo "scale=2; 3.141592 * $radio * $radio" | bc -l)"
    else
        echo "La figura no es válida"
        return 1
    fi
}

operaciones_aritmeticas() {
    local operacion=""
    local valor1=0
    local valor2=0

    read -p "Ingrese la operación (suma, resta, multiplicacion, division): " operacion
    read -p "Ingrese el primer valor: " valor1
    read -p "Ingrese el segundo valor: " valor2

    case $operacion in
    suma)
        echo "La suma es: $(($valor1 + $valor2))"
        ;;
    resta)
        echo "La resta es: $(($valor1 - $valor2))"
        ;;
    multiplicacion)
        echo "La multiplicación es: $(($valor1 * $valor2))"
        ;;
    division)
        if [ $valor2 -eq 0 ]; then
            echo "No se puede dividir entre 0"
            return 1
        fi
        echo "La división es: $(echo "scale=2; $valor1 / $valor2" | bc -l)"
        ;;
    *)
        echo "La operación no es válida"
        return 1
        ;;
    esac
}

while :; do
    # Limpiar la pantalla
    clear
    # Bienvenida
    echo "----------------------------------"
    echo "--Bienvenido al proyecto de bash--"
    echo "----------------------------------"
    echo "Seleccione una opción:"
    echo "1. Calcular IMC"
    echo "2. Calcular el area de figuras geométricas"
    echo "3. Operaciones aritméticas"
    echo "4. Salir"

    # Leer los datos del usuario
    read -n1 -p "Digitar opción (1-4): " opcion # -n1: solo lee un caracter, -p: muestra un mensaje
    echo -e "\n"

    # Validar la opción ingresada
    case $opcion in
    1)
        echo "Calcular IMC"
        calcular_imc
        sleep 2
        ;;
    2)
        echo "Calcular área"
        area_figuras_geometricas
        sleep 2
        ;;
    3)
        echo "Operaciones aritméticas"
        operaciones_aritmeticas
        sleep 2
        ;;
    4)
        echo "Sacando del programa..."
        sleep 2
        exit 0
        ;;
    esac
done