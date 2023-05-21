# !/bin/bash
# Expansión de variables
# FranciscoGL, Github: @FrancoGL20

# Expansión básica de variables
variable="Hola, mundo!"
echo $variable  # Salida: Hola, mundo!



echo "Expansión con valor predeterminado"
nombre=""
echo ${nombre:-Juan}  # Salida: Juan (solo si la variable está vacía, pero no se modifica esta)

echo $nombre # Salida: (nada) (la variable sigue vacía porque no se modificó)



echo "Expansión con valor predeterminado y asignación"
nombre=""
echo ${nombre:=Juan}  # Salida: Juan (la variable está vacía, pero se modificó)

echo $nombre # Salida: Juan (la variable se modificó)



echo "Expansión con valor alternativo"
nombre="Marcos"
echo ${nombre:+Juan}  # Salida: Juan (la variable no está vacía, entonces se expande el valor alternativo pero no se modifica esta)
echo $nombre # Salida: Marcos (la variable no se modificó)

unset nombre # Eliminar la variable

echo ${nombre:+Juan}  # Salida: (nada) (la variable está vacía, pero no se modifica esta)
echo $nombre # Salida: (nada) (la variable no se modificó)



echo "Expansión con valor de error"
nombre="Marcos"
echo ${nombre:?Error, la variable está vacía}  # Salida: Marcos (la variable no está vacía, entonces se expande su valor)

nombre=""
echo ${nombre:?Error, la variable está vacía}  # Salida: Error, la variable está vacía (la variable está vacía, entonces se expande el valor de error y se imprime el mensaje)

echo "Esta línea no se ejecuta porque en la línea anterior se produjo un error"
