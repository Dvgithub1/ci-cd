FROM openjdk:8
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -xzf /apache-tomcat-9.0.64.tar.gz
RUN cp /var/lib/jenkins/workspace/docker-container/target/vprofile-v1.war  /usr/local/tomcat/webapps/  
EXPOSE 8080
CMD ["catalina.sh","run"]

