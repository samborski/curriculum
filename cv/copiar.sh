#!/bin/bash

# Obtener el directorio actual
current_dir=$(pwd)
# Obtener el directorio padre
parent_dir=$(dirname "$current_dir")

# Copiar todos los archivos excepto copiar.sh al directorio padre
for file in *; do
    if [ "$file" != "copiar.sh" ]; then
        cp -r "$file" "$parent_dir/"
        echo "Copiando $file a $parent_dir"
    fi
done

echo "Proceso de copia completado"