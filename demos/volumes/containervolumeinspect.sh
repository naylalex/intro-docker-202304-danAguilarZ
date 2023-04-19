# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker inspect $CONTAINER_NAME --format '{{ .HostConfig.VolumesFrom }}'
docker inspect $CONTAINER_NAME | jq .[].Mounts
#TODO: Probar con CONTAINER_NAME=redis30