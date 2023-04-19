# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run --log-driver=gelf --log-opt=gelf-address=udp://localhost:12201 alpine echo hello world $(date)