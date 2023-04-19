# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
docker run -d -p 80:80 nginx
docker run -d -p 8000:80 nginx
docker run -d -p 8080:80 nginx