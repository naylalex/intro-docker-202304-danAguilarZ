# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM gcc:12.2.0
WORKDIR /usr/src/hellogcc
COPY hellogcc.c .
RUN gcc -o hellogcc hellogcc.c
CMD ["./hellogcc"]