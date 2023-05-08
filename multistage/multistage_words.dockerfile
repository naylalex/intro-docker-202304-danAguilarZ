FROM maven:3.6.3-jdk-11 as maven

WORKDIR /app

COPY . .

RUN mvn clean verify

FROM amazoncorretto:17.0.3-alpine as correto-jdk

# required for strip-debug to work
RUN apk add --no-cache binutils

# Build small JRE image
RUN $JAVA_HOME/bin/jlink \
         --verbose \
         --add-modules java.base,java.management,java.naming,java.net.http,java.sql,jdk.httpserver,jdk.unsupported \
         --strip-debug \
         --no-man-pages \
         --no-header-files \
         --compress=2 \
         --output /customjre


FROM alpine:latest as java_image
ENV JAVA_HOME=/jre
ENV PATH="${JAVA_HOME}/bin:${PATH}"

COPY --from=correto-jdk /customjre $JAVA_HOME

# Add app user
ARG APPLICATION_USER=appuser
RUN adduser --no-create-home -u 1000 -D $APPLICATION_USER

# Configure working directory
RUN mkdir /app && \
    chown -R $APPLICATION_USER /app

USER 1000

COPY --from=maven /app/target/ /app/

WORKDIR /app

CMD [ "java", "-jar", "/app/words.jar" ]