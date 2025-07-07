# Use Eclipse Temurin Java 17 as base image
FROM eclipse-temurin:17-jdk-alpine

# Create app directory
WORKDIR /app

# Copy JAR file to container
COPY target/EmailWriter-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 9090

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

