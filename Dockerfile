FROM  tomcat
EXPOSE 8080
COPY  **/*.war
CMD ["java","-jar", "/*.war"]
