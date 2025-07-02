FROM openjdk:8

# Copy the built JAR from the target directory
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

