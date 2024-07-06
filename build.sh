
# Crear y activar el entorno virtual de Python
python3 -m venv .venv
source .venv/bin/activate

# Actualizar pip e instalar dependencias
pip install --upgrade pip
pip install -r requirements.txt

# Eliminar cualquier directorio 'public' existente
rm -rf public

# Inicializar y construir Reflex
reflex init
reflex export --frontend-only

# Descomprimir el frontend exportado
unzip frontend.zip -d public
rm -f frontend.zip

# Desactivar el entorno virtual
deactivate
