# ------------------------------------------------------------------------------
# 00_main.R
# Archivo principal del proyecto: Ejecuta todos los pasos del análisis
# Proyecto: Problem Set 3 - BDML (Uniandes)
# Objetivo: Predecir precios de vivienda en Chapinero (Bogotá)
# ------------------------------------------------------------------------------

# Limpiar el entorno y configurar directorio base
rm(list = ls())
cat("\f") # Limpiar consola
options(scipen = 999) # Evitar notación científica

# Instalar y cargar paquetes requeridos
source("scripts/00_setup.R")

# 1. Cargar y limpiar datos iniciales
source("scripts/01_cleaning.R")

# 2. Enriquecer datos: variables externas (OSM) y texto
source("scripts/02_features.R")

# 3. Modelado supervisado con múltiples algoritmos
source("scripts/03_modeling.R")

# 4. Validación cruzada espacial vs clásica
source("scripts/04_spatialCV.R")

# 5. Predicciones finales y creación de archivos para Kaggle
source("scripts/05_submission.R")
