#!/bin/bash
# Script de inicialización del repo fulbito-marketing en GitHub
# Ejecutar desde la carpeta raíz del proyecto (donde está este archivo)

echo "Inicializando repo fulbito-marketing..."

git init
git add .
git commit -m "feat: initial repo structure with agent prompts and workflow"

echo ""
echo "Ahora creá el repo en GitHub:"
echo "  1. Ir a https://github.com/new"
echo "  2. Nombre: fulbito-marketing"
echo "  3. Privado (recomendado)"
echo "  4. NO inicializar con README (ya tenemos uno)"
echo ""
echo "Luego ejecutá:"
echo "  git remote add origin https://github.com/maujpok/fulbito-marketing.git"
echo "  git branch -M main"
echo "  git push -u origin main"
