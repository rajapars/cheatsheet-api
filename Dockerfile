### For Deployment ###
# Build stage
#FROM maven:3.6.3-openjdk-8-slim AS build
#WORKDIR /app
#COPY pom.xml .
#resolve maven dependencies
#RUN mvn clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r target/
#COPY src ./src
#RUN mvn clean package -Dmaven.test.skip
#
#FROM openjdk:8-jdk-alpine
#COPY --from=build /app/target/cheatsheet.jar cheatsheet.jar
#ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "cheatsheet.jar"]

### For Development ###
FROM openjdk:8-jdk-alpine
COPY target/cheatsheet.jar cheatsheet.jar
COPY wait-for.sh wait-for.sh
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "cheatsheet.jar"]