# Use official Tomcat base image
FROM tomcat:9-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps
COPY target/Hospital_Management.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]