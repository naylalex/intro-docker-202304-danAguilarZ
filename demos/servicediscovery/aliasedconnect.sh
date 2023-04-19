# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run --rm --net $NET centos curl -s es:9200
#TIP: Invoca este script así (sin el símbolo de comentario #):
#NET=dev source aliasedconnect.sh
#NET=prod source aliasedconnect.sh
