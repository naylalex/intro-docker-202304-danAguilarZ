# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM ubuntu:23.04
RUN apt-get update
RUN apt-get install -y maven openjdk-8-jdk
WORKDIR /app
COPY . .
RUN mvn verify
WORKDIR /app/target
ENTRYPOINT java -Xmx8m -Xms8m -jar words.jar
EXPOSE 8080