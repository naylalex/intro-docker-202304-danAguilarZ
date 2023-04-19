# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker network create --subnet 10.66.0.0/16 pubnet
docker run --net pubnet --ip 10.66.66.66 -d nginx
# NOTA: Evitar la asignación de direcciones IP en el código