FROM openjdk:8
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -xzf /apache-tomcat-9.0.64.tar.gz
COPY /target/vprofile-v1.war  /usr/local/tomcat/webapps/  
EXPOSE 8080
CMD ["starupt.sh","run"]

