# Base image - java version 17 on an alpine distribution
FROM openjdk:17-ea-alpine

# copy in the jar file from the target folder
ADD target/couponservice-0.0.1-SNAPSHOT.jar couponservice-0.0.1-SNAPSHOT.jar

# start the application in the jar file
ENTRYPOINT [ "java","-jar","couponservice-0.0.1-SNAPSHOT.jar" ]