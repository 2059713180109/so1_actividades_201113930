#GUARDAMOS LA VARIABLE USER
export GITHUB_USER=2059713180109

#CONSULTAMOS LA URL
curl https://api.github.com/users/2059713180109

#EXTRAEMOS EL ID DE GITHUB USER
export GITHUB_USER_ID=$(curl -s https://api.github.com/users/2059713180109 | grep '"id":' | sed 's/.*"id": \([0-9]*\).*/\1/')

#Imprimimos el mensaje
echo "Hola $GITHUB_USER, user ID: $GITHUB_USER_ID"

#Intentamos crear la carpeta
CURRENT_DATE=$(date +"%Y-%m-%d")
mkdir -p "/tmp/$current_date"

#Guardamos el mensaje en el archivo
log_file="$log_directory/saludos.log"
echo "$message" > "$log_file"



