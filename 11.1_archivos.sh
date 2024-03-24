# !/bin/bash
# Copia los archivos que empiezan con un número seguido de un punto a la carpeta archivos
# FranciscoGL, Github: @FrancoGL20

if [ ! -d "archivos" ]; then
    mkdir archivos
fi

for file in $(ls | grep -E "^[0-9][\._].+"); do
    cp $file "archivos/0$file"
done

ls archivos

exit 0