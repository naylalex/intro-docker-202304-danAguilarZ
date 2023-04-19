# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run --mount=type=bind,source=$NAMER_PATH,target=/src -dP --name namerbind namer