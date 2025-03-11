# Tomcat 10 Sample Application

Tomcat 10.0.x is the first Tomcat release to make the jump from Java EE to Jakarta EE. This means that applications running on previous versions of Tomcat will almost certainly require changes to run on Tomcat 10.0.x. This sample application directly targets Jakarta EE 9: the [pom file](pom.xml) has been updated to use `jakarta.jakartaee-web-api`, whereas an older version of this application would have used `javax.servlet-api`. If you browse the source code, you can see that import statements that would have used `javax` in the past are now using `jakarta`.

If you have an existing Tomcat 9 application, you can use the [Tomcat Jakarta EE Migration Tool](https://github.com/apache/tomcat-jakartaee-migration) (under development) to migrate your source code or archive files from Java EE APIs to Jakarta EE APIs for Tomcat 10. For more information, please see the official [Tomcat 10 migration guide](https://tomcat.apache.org/migration-10.html) from the Apache Foundation.

## Deploy to App Service

ToDo


    1  apt-get update
    2  halt
    3  sudo apt update
    4  sudo apt install openjdk-17-jdk
    5  git clone https://github.com/Azure-Samples/tomcat10-jakartaee9.git
    6  cd tomcat10-jakartaee9
    7  ls
    8  ls -ltr
    9  apt-get install maven -y
   10  ls
   11  mvn clean package
   12  ls
   13  ls -ltr
   14  cd target/
   15  ls
   16  ls -ltr
   17  cd ..
   18  vim Dockerfile
   19  pwd
   20  cd ..
   21  ls
   22  ls -ltr
   23  docker build -t tomcat:v1 .
   24  ls
   25  cd tomcat10-jakartaee9/
   26  docker build -t tomcat:v1 .
   27  docker images
   28  docker run -d -p 8080:8080 tomcat:v1
   29  docker ps
   30  docker logs f9faa2f078f4
   31  docker logs f9faa2f078f4 -f
   32  docker images
   33  docker os
   34  docker ps
   35  docker exec -it  f9faa2f078f4 bash
   36  curl http://localhost:8080/helloworld
   37  curl http://localhost:8080/helloworld/