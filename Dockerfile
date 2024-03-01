FROM ubuntu:latest
LABEL authors="Elen Khachatryan"
LABEL JAVA_VERSION=20

RUN apt install -y openjdk-19-jre-headless && apt clean

WORKDIR /work/
COPY target/*.jar /work/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]