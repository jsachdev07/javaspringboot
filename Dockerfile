# kindly compile, test and package the java spring boot source code using maven as the resulting app.jar file needs to be copied in the image.
# "mvn clean package"

FROM openjdk:8-jdk-alpine
WORKDIR /java
ADD app.jar app.jar
EXPOSE 8080
# Run the jar file
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
