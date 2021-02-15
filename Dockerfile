FROM  tomcat
EXPOSE 8080
COPY  /target/Devop_java-1.0-SNAPSHOT.jar /demo.jar
CMD ["java","-jar", "/demo.jar"]