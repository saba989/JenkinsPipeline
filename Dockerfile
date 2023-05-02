FROM openjdk:11
EXPOSE 8081
ADD target/jenkins-0.0.1-SNAPSHOT.jar  jenkins-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/jenkins-0.0.1-SNAPSHOT.jar"]