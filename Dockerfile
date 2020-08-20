# Build stage
FROM maven:3.6.3-openjdk-8-slim AS build
WORKDIR /app
COPY pom.xml .
#resolve maven dependencies
RUN mvn clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r target/
COPY src ./src
RUN mvn clean package -Dmaven.test.skip

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY --from=build /app/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]