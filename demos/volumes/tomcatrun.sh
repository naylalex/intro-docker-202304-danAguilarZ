# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run --name webapp -d -p 8080:8080 -v /usr/local/tomcat/logs tomcat