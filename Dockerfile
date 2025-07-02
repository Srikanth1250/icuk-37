FROM openjdk:8

# Copy the built JAR from the target directory
COPY taxi-booking/target/taxi-booking-1.0-SNAPSHOT.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

FROM openjdk:8
ADD jarstaging/com/stalin/demo-workshop/2.0.1/demo-workshop-2.0.1.jar demo-workshop.jar
ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]

