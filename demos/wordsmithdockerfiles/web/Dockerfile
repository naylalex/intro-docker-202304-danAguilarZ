# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM golang:1.16-alpine
WORKDIR /app
COPY dispatcher.go ./
RUN go build dispatcher.go
COPY static/ static/
ENTRYPOINT ["./dispatcher"]
EXPOSE 80