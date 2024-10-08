
# Mostrar el estado actual de los discos
lsblk > lsblk_output.txt

# Dividir el disco en 4 particiones
# Crear la tabla de particiones
(
echo o # Crear nueva tabla de particiones
echo n # Nueva partición
echo p # Primaria
echo 1 # Número de partición
echo   # Primer sector (predeterminado)
echo +2G # Tamaño de la partición 1
echo n # Nueva partición
echo p # Primaria
echo 2 # Número de partición
echo   # Primer sector (predeterminado)
echo +2G # Tamaño de la partición 2
echo n # Nueva partición
echo p # Primaria
echo 3 # Número de partición
echo   # Primer sector (predeterminado)
echo +2G # Tamaño de la partición 3
echo n # Nueva partición
echo e # Extendida
echo 4 # Número de partición
echo   # Primer sector (predeterminado)
echo   # Último sector (predeterminado)
echo n # Nueva partición dentro de la extendida
echo l # Lógica
echo   # Número de partición (predeterminado)
echo   # Primer sector (predeterminado)
echo +4G # Tamaño de la partición lógica
echo w # Escribir los cambios
) | fdisk /dev/sdX

# Formatear las particiones con ext4
mkfs.ext4 /dev/sdX1
mkfs.ext4 /dev/sdX2
mkfs.ext4 /dev/sdX3
mkfs.ext4 /dev/sdX4

# Crear los puntos de montaje
mkdir -p /mnt/part1
mkdir -p /mnt/part2
mkdir -p /mnt/part3
mkdir -p /mnt/part4

# Montar las particiones
mount /dev/sdX1 /mnt/part1
mount /dev/sdX2 /mnt/part2
mount /dev/sdX3 /mnt/part3
mount /dev/sdX4 /mnt/part4

echo "Particiones creadas y montadas correctamente."

#3. Modificar el script

Asegúrate de reemplazar /dev/sdX por el identificador correcto de tu disco.
Guarda y cierra el archivo (CTRL + O, Enter, CTRL + X si usas nano).

#4. Hacer el script ejecutable

chmod +x puntb.sh

#5. Ejecutar el script

sudo ./puntb.sh

