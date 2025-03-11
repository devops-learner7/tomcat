FROM tomcat:10-jdk17-openjdk-slim
WORKDIR /usr/local/tomcat
COPY target/helloworld-1.1.war /usr/local/tomcat/webapps/helloworld-1.1.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
