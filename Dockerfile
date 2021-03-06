### For Deployment ###
# Build stage
#FROM maven:3.6.3-openjdk-8-slim AS build
#WORKDIR /app
#COPY pom.xml .
#COPY src src
#RUN mvn clean package -Dmaven.test.skip

#FROM openjdk:8-jdk-alpine
#COPY --from=build /app/target/cheatsheet.jar cheatsheet.jar
#COPY wait-for.sh wait-for.sh
#ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "cheatsheet.jar"]

### Initialize MySQL Database data ###
FROM mysql:8.0
ADD mysql-dump/schema.sql /docker-entrypoint-initdb.d

### For Development ###
#FROM openjdk:8-jdk-alpine
#COPY target/cheatsheet.jar cheatsheet.jar
#COPY wait-for.sh wait-for.sh
#ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "cheatsheet.jar"]