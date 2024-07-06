#!/usr/bin/env bash

# Activar el entorno virtual de Python
source .venv/bin/activate

# Verificar si Reflex está inicializado
if [ ! -d ".web" ]; then
    echo "Inicializando Reflex..."
    reflex init
fi

# Iniciar la aplicación
reflex run
