#!/bin/bash

echo "Punto C terimnado"

#Creamos un usuario llamado developer
sudo useradd developer
cat /etc/passwd
#Creamos un grupo llamado grupoDevops
sudo groupadd grupoDevops
cat /etc/group
id developer

sudo usermod -aG grupoDevops developer
sudo useradd tester

sudo groupadd grupoDiseño
sudo usermod -aG grupoDiseño tester
id tester 

#Aca le agregamos los permisos
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2

#Creamos un archivo “validar.txt” con la salida del comando whoami, con cada uno de los 
#usuarios en sus respectivas carpetas. (alumno_1 , alumno_2, alumno_3 , profesores)
whoami > /Examenes-UTN/alumno_1/validar.txt
whoami > /Examenes-UTN/alumno_2/validar.txt
whoami > /Examenes-UTN/alumno_3/validar.txt
whoami > /Examenes-UTN/profesores/validar.txt

