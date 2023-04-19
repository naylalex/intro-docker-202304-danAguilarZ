# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores
docker run -v webapps:/webapps -w /webapps -it alpine vi ROOT/index.jsp
#TODO: Modifica el contenido de la página, salva y guarda en vi y exit de la sesión