# !/bin/bash
# Creación de directorio, archivo y escritura en el mismo mostrando su contenido
# FranciscoGL, Github: @FrancoGL20

echo "Creando directorio... $1"
mkdir -p $1

echo "Creando archivo... $2.txt"
touch "$1/$2.txt"

echo "Escribiendo en el archivo... $1/$2.txt"
echo "$3" > "$1/$2.txt"

echo "Contenido del archivo $1/$2.txt:"
cat "$1/$2.txt"

exit 0

############## Entrada: ##############
# ./11_archivos.sh dir arch texto
############## Salida: ##############
# Creando directorio... dir
# Creando archivo... arch.txt
# Escribiendo en el archivo... dir/arch.txt
# Contenido del archivo dir/arch.txt:
# texto