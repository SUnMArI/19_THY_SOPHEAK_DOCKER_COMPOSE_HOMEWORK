# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY mini-project-expense-tracking-0.0.1-SNAPSHOT.jar /app/my-spring-boot-app.jar

COPY . .
# Expose the port on which the application will run
EXPOSE 8081

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/my-spring-boot-app.jar"]
