# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -it --link redis30:redis busybox telnet redis 6379
#TODO: Ejecuta los siguientes comandos en la sesión:
# GET counter
# INFO server
# QUIT