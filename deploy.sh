#!/bin/bash
# Detener ejecución si hay errores
set -e
echo "Iniciando despliegue..."

# 1. Ir al directorio del proyecto
cd /ruta/a/tu/proyecto

# 2. Obtener los últimos cambios del repositorio
git pull origin main

# 3. Instalar dependencias (ejemplo para Node.js)
npm install

# 4. Construir la aplicación (si aplica)
npm run build

# 5. Reiniciar el servidor (ejemplo con PM2)
pm2 restart app-name
echo "Despliegue completado con éxito."
