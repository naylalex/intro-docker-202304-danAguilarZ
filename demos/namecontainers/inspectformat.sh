# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
docker inspect --format '{{ json .Created}}' ticktock
docker inspect --format '{{ json .State.Status}}' $CONTAINER_NAME