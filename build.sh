
# Mostrar la versión de Node.js
echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

# Crear y activar el entorno virtual de Python
python3 -m venv .venv
source .venv/bin/activate

# Actualizar pip e instalar dependencias
pip install --upgrade pip
pip install -r requirements.txt

# Verificar la instalación de Reflex
if ! command -v reflex &> /dev/null
then
    echo "Reflex no está instalado. Instalando Reflex..."
    pip install reflex
fi

# Eliminar cualquier directorio 'public' existente
rm -rf public

# Inicializar Reflex
echo "Inicializando Reflex..."
reflex init

# Construir Reflex
echo "Construyendo Reflex..."
reflex export --frontend-only

# Descomprimir el frontend exportado
unzip frontend.zip -d public
rm -f frontend.zip

# Desactivar el entorno virtual
deactivate

echo "Build completo"
