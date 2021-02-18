FROM  tomcat
EXPOSE 8085
COPY  **/*.war  /opt
CMD ["java","-jar", "/*.war"]
