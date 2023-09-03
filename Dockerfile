FROM eclipse-temurin:11-jdk-alpine

ARG user=appuser
ARG group=appuser

RUN addgroup -S appuser && adduser -S $user -G appuser

COPY *.war app.war

RUN chown -R $user:$user /home/$user/

RUN chmod -R 755 /home/$user/

EXPOSE 8080

WORKDIR /home/$user

ENTRYPOINT ["java","-jar","/app.war"]



# Use the official OpenJDK 11 image as the base image
#FROM openjdk:11

# Create a directory in the container to copy the WAR file into
#WORKDIR /home/ubuntu/.jenkins/workspace/Second/

# Copy the webapp.war file from your local machine into the container
#COPY /webapp/target/webapp.war .

# Command to run when the container starts
#CMD ["java", "-jar", "webapp.war"]
