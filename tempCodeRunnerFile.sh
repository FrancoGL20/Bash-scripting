# Recursividad
factorial() {
    local numero=$1
    if ((numero <= 1)); then
        echo 1
    else
        local ant=$((numero - 1))
        local temp=$(factorial $ant)
        echo $((numero * temp))
    fi
}

factorial 5 # Salida: 120