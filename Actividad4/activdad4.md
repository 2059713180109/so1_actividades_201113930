# Creación de Servicio

## Creación del archivo ejecutable

- Se crea el archivo en "asdf" 
 
```[shell] 
# Un ciclo que imprime el mensaje con la fecha del sistema
while true
do
  echo "Saludos, la fecha es: $(date)" 
  sleep 1
done
```

- Le agregamos permiso de ejecución al archivo 

```
chmod +x mi_saludo.sh
```


## Creación del archivo de configuración del servicio

Este archivo se debe de guardar en "/etc/systemd/system/". Sirve para configurar el servicio y establecer el ejecutable

```
[Unit]
Description=Servicio que imprime un saludo y la fecha actual del
sistema
After=network.target

[Service]
ExecStart=/home/eddie/mi_saludo.sh
Restart=always
User=nobody

[Install]
WantedBy=multi-user.target
```

## Recargamos el Demonio de SYSTEMD el Servicio

``sudo systemctl daemon-reload``

## Iniciamos el servicio
``sudo systemctl start mi_saludo.service``

## Habilitamos el inicio con el sistema

``sudo systemctl enable mi_saludo.service``

## Verificamos el estado del servicio

``sudo systemctl status mi_saludo.service``


![systemctl status](URL "sopes1_tarea4_status_services.jpg")
