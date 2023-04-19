# Demostración basada en material del curso de autoestudio Container Training 
# publicado en https://github.com/jpetazzo/container.training 
# creado por Jérôme Petazzoni y otros contribuidores.
FROM postgres:15.2
COPY ./words.sql /docker-entrypoint-initdb.d/
ENV PGDATA=/pg
ENV POSTGERS_USER=postgres
ENV POSTGRES_PASSWORD=
ENV POSTGRES_DB=postgres
ENV POSTGRES_HOST_AUTH_METHOD=trust
EXPOSE 5432