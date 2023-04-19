# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -d --net bridge --name containerdriver1 amouat/network-utils tail -f /dev/null
docker run -d --net container:containerdriver1 --name containerdriver2 amouat/network-utils tail -f /dev/null
echo containerdriver1 IP configuration
docker exec containerdriver1 ifconfig
echo containerdriver2 IP configuration
docker exec containerdriver2 ifconfig