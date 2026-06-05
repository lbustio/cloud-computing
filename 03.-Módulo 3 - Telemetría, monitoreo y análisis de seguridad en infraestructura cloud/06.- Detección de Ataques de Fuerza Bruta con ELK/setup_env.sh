#!/bin/bash

# Nombre del entorno virtual
ENV_NAME="elk-logs-env"

echo "[*] Intentando crear el entorno virtual '$ENV_NAME'..."

# Intentamos crear el entorno virtual silenciando errores menores
if python3 -m venv $ENV_NAME 2>/dev/null; then
    echo "[*] Entorno virtual creado exitosamente a la primera."
else
    echo "[!] Falló la creación del entorno (falta python3-venv o ensurepip)."
    echo "[*] Instalando las dependencias del sistema necesarias..."
    
    # Actualizar e instalar dependencias
    sudo apt update
    sudo apt install -y python3-venv python3-pip python3.11-venv
    
    echo "[*] Reintentando crear el entorno virtual..."
    python3 -m venv $ENV_NAME
    
    if [ $? -ne 0 ]; then
        echo "[X] Error fatal: No se pudo crear el entorno virtual incluso después de instalar las dependencias."
        exit 1
    fi
fi

echo "[*] Instalando 'requests' dentro del entorno virtual..."
# Al ejecutar el script en Bash, usar "source" puede ser problemático para el entorno actual.
# Es mejor invocar directamente el binario 'pip' dentro de la carpeta del entorno virtual.
$ENV_NAME/bin/pip install requests

echo ""
echo "=================================================================="
echo "✅ ¡Entorno configurado y dependencias instaladas con éxito!"
echo "=================================================================="
echo "👉 IMPORTANTE: Para activar el entorno en esta terminal, debes ejecutar:"
echo ""
echo "    source $ENV_NAME/bin/activate"
echo ""
echo "=================================================================="