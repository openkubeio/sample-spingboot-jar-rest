FROM openjdk:11
EXPOSE 9090
ARG JAR_FILE=target/spring-boot-docker.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
