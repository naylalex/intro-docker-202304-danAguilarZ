# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM ubuntu
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /app
COPY hello.c .
RUN make hello
CMD ./hello