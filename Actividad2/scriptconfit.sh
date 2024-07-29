##########3Script para configuar la ejecucion del script.sh cada 5 minutos.
# Agrego permisos de ejecion al archivo ubicado en /tmp/
chmod +x /tmp/script.sh
#Agregamos la tarea al crontab
echo "*/5 * * * * /tmp/script.sh" > /tmp/mycron
crontab -l > /tmp/mycron
crontab /tmp/mycron


