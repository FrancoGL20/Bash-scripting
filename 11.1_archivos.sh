# !/bin/bash
# 
# FranciscoGL, Github: @FrancoGL20

if [ ! -d "archivos" ]; then
    mkdir archivos
fi

for file in $(ls | grep -E "^[0-9][\._].+"); do
    cp $file "archivos/0$file"
done

ls archivos

exit 0