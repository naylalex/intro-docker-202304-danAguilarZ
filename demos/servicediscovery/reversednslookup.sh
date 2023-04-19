# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -it --net prod --net-alias hello alpine
# Ejecuta los siguientes comandos desde el shell de alpine:
# apk add --no-cache drill
# ifconfig
# Identifica la dirección IP correspondiente a eth0
# drill -t ptr <IP invertida>.in-addr.arpa