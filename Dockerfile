FROM eclipse-temurin:8-jdk

EXPOSE 8080

ARG JAR_FILE
COPY ${JAR_FILE} /usr/app/my-app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app.jar"]
