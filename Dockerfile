FROM ubuntu:latest
LABEL authors="Elen Khachatryan"
LABEL JAVA_VERSION=20

RUN apt install -y openjdk-19-jre-headless && apt clean

WORKDIR /app/
COPY target/*.jar /app/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]
