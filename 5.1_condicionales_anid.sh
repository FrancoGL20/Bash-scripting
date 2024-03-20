# !/bin/bash
# Condicionales anidados

read -p "Ingrese la primera nota (1-10): " nota1
read -p "Ingrese la segunda nota (1-10): " nota2
read -p "Ingrese la tercera nota (1-10): " nota3
promedio=$((($nota1 + $nota2 + $nota3) / 3))

echo "============================================="

echo "el promedio del estudiante es: $promedio"

if [ $promedio -ge 7 ]; then
    echo "Estudiante aprobado"
else
    if [ $promedio -ge 4] && [ $promedio -le 6 ]; then
        echo "Estudiante regular"
    else
        echo "Estudiante reprobado"
    fi
fi