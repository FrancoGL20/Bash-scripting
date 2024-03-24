# !/bin/bash
# 
# FranciscoGL, Github: @FrancoGL20

# Verificar que se ingresen dos parámetros
if [ -z $1 ] && [ -z $2 ]; then
    echo "Error: Debe ingresar dos parámetros (tipo de elemento [f|d] y nombre del elemento)"
    exit 1
fi

# dependiendo del primer parametro se crea un archivo o directorio con el nombre del segundo parametro
if [ $1 == "f" ]; then
    if [ -f $2 ]; then
        echo "Error: El archivo $2 ya existe"
        exit 1
    fi
    touch $2
    echo "Archivo $2 creado"
    exit 0
elif [ $1 == "d" ]; then
    if [ -d $2 ]; then
        echo "Error: El directorio $2 ya existe"
        exit 1
    fi
    mkdir $2
    echo "Directorio $2 creado"
    exit 0
else
    echo "Error: El primer parámetro debe ser 'f' para archivo o 'd' para directorio"
    exit 1
fi