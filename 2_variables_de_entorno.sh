# !/bin/bash
# Variables locales y acceso a variables de entorno
# FranciscoGL

nombre="Francisco GL" # sintáxis correcta
# nombre = "Francisco GL" # sintáxis incorrecta (no espacios en el "=")
# nombre= "Francisco GL" # sintáxis incorrecta (no espacios en el "=")
# nombre ="Francisco GL" # sintáxis incorrecta (no espacios en el "=")

# Variable local previamente declarada
echo nombre

# Acceso a la variable de entorno "nombre"
echo $NOMBRE

exit 0
