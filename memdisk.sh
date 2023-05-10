#!/bin/bash
# Obtener el uso de memoria en porcentaje
memory_usage=$(free | awk '/Mem/ {printf("%3.1f%%", $3/$2*100)}')
# Obtener el uso del disco en porcentaje
disk_usage=$(df -h | awk '/^\/dev\/sda1/ {print $5}')
# Mostrar el uso de memoria y disco en la consola
echo "Uso de memoria: $memory_usage"
echo "Uso del disco: $disk_usage"

