#Punto C

sudo useradd developer
cat /etc/passwd
sudo groupadd grupoDevops
cat /etc/group
id developer
usermod --help
sudo usermod -aG grupoDevops developer

sudo useradd tester
sudo groupadd grupoDiseño
sudo usermod -aG grupoDiseño tester
id tester

sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2

whoami > /Examenes-UTN/alumno_1/validar.txt

HASH=$(sudo grep $(whoami)/etc/shadow | awk -F ':' '{print $2}')
