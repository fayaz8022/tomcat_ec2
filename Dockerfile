FROM  tomcat
EXPOSE 8085
COPY  **/*.war
CMD ["java","-jar", "/*.war"]
