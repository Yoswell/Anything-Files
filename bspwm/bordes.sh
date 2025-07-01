#!/bin/bash

focused_color="#000000"   # Cambia este valor al color que desees en formato hexadecimal

bspc subscribe focus | while read -r line; do
    if [[ $line == FOCUSED* ]]; then
        xsetroot -solid "$focused_color"
    else
        xsetroot -solid "#000000"  # Cambia este valor al color del borde no enfocado
    fi
done

