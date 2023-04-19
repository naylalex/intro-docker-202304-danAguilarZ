# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -d -p 1234:8080 \
  -v logs:/usr/local/tomcat/logs \
  -v webapps:/usr/local/tomcat/webapps \
  tomcat