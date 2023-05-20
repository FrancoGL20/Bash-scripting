# !/bin/bash
# Calificaciones de alumno dependiendo de su nota, condcionales anidados
# FranciscoGL, Github: @FrancoGL20

nota1=0
nota2=0
nota3=0
promedio=0

read -p "Ingrese la primera nota: " nota1
read -p "Ingrese la segunda nota: " nota2
read -p "Ingrese la tercera nota: " nota3
promedio=$((($nota1 + $nota2 + $nota3) / 3))

echo "El promedio es: $promedio"

if [ $promedio -ge 7 ]; then
    echo "El alumno esta aprobado"
else
    if [ $promedio -gt 4 -a $promedio -lt 7 ]; then
        echo "El alumno tiene una nota regular"
    else
        echo "El alumno esta reprobado"
    fi
fi

exit 0