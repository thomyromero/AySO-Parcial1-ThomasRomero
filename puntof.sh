#Punto F

 # ----------- Filtro avanzado ----------
 # Cargo el contenido del archivo todo de una vez
 cat << EOF |tee $ARCHIVO_FILTRO_AVANZADO
 Mi IP Publica es: $(curl -s ifconfig.me)
 Mi usuario es: $(whoami)
 El Hash de mi usuario es: $(sudo cat /etc/shadow |grep vagrant |awk -F ':' '{print $2}')
EOF
