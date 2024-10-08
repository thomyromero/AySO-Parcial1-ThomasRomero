#!/bin/bash


echo "Punto B - Terminado"


DISCO="/dev/sdc"

TAMANO_PARTICION="1G" 

DIRECTORIO_MONTAJE="/mnt"

lsblk $DISCO > disco.txt
echo "Información del disco guardada en disco.txt"

sudo fdisk $DISCO << EOF
n
p
1
$TAMANO_PARTICION
n
p
2
$TAMANO_PARTICION
n
p
3
$TAMANO_PARTICION
n
e
4
w
EOF

for i in {1..4}; do
  sudo mkfs.ext4 $DISCO$i
done

sudo mkdir -p $DIRECTORIO_MONTAJE/{parti1,parti2,parti3,parti4}
sudo mount $DISCO1 $DIRECTORIO_MONTAJE/parti1
sudo mount $DISCO2 $DIRECTORIO_MONTAJE/parti2
sudo mount $DISCO3 $DIRECTORIO_MONTAJE/parti3
sudo mount $DISCO4 $DIRECTORIO_MONTAJE/parti4
