# For java18, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/springTest-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cd target/spring-boot-web-jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT [ "java","-jar","app.jar" ]