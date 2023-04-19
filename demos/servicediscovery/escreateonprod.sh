# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -d --name prod-es-1 --net-alias es --net prod elasticsearch:2
docker run -d --name prod-es-2 --net-alias es --net prod elasticsearch:2