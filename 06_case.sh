# !/bin/bash
# CASE: dado un mes, determinar qué número de mes es
# FranciscoGL, Github: @FrancoGL20

mes=""

read -p "Ingrese el nombre del mes: " mes

case $mes in
    "enero") echo "Enero es el mes 1" ;;
    "febrero") echo "Febrero es el mes 2" ;;
    "marzo") echo "Marzo es el mes 3" ;;
    "abril") echo "Abril es el mes 4" ;;
    "mayo") echo "Mayo es el mes 5" ;;
    "junio") echo "Junio es el mes 6" ;;
    "julio") echo "Julio es el mes 7" ;;
    "agosto") echo "Agosto es el mes 8" ;;
    "septiembre") echo "Septiembre es el mes 9" ;;
    "octubre") echo "Octubre es el mes 10" ;;
    "noviembre") echo "Noviembre es el mes 11" ;;
    "diciembre") echo "Diciembre es el mes 12" ;;
    *) echo "El mes ingresado no es válido" ;;
esac

# Ejemplo con ?
archivo="script.sh"

case $archivo in
    *.txt)
        echo "El archivo es un archivo de texto"
        ;;
    *.jpg | *.png)
        echo "El archivo es una imagen"
        ;;
    script?.sh)
        echo "El archivo es un script con un solo carácter en el lugar del signo de interrogación"
        ;;
    *)
        echo "El tipo de archivo no está reconocido"
        ;;
esac
