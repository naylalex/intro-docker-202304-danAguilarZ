# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run --rm --volumes-from loadbalancer jpetazzo/hamba reconfigure 80 google.com:80