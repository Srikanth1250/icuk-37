# Use OpenJDK 8 as the base image
FROM openjdk:8

# Set working directory inside container
WORKDIR /app

# Copy the JAR file from the Maven build output
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
