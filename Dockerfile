FROM openjdk:8-alpine

#for M1 use this:
#FROM --platform=linux/amd64 amazonlinux:2018.03
RUN addgroup -S spring && adduser -S spring -G spring
VOLUME /tmp
EXPOSE 8080
ARG DEPENDENCY=target
ADD ${DEPENDENCY}/*.jar appbootrest.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/appbootrest.jar"]
