FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY config ./config
COPY src ./src
RUN mvn --batch-mode clean package

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/classes ./classes
USER 10001
CMD ["java", "-cp", "/app/classes", "com.example.App"]
