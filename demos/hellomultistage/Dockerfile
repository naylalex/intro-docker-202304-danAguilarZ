# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM ubuntu AS compiler
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /build
COPY hello.c .
RUN make hello
FROM ubuntu
WORKDIR /app
COPY --from=compiler /build/hello .
CMD /app/hello