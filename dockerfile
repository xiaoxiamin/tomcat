FROM tomcat:v1
COPY server.xml /usr/local/tomcat/conf/server.xml
COPY context.xml /usr/local/tomcat/conf/context.xml 
RUN rm -rf /app/app/*
COPY SfzBackControl.war /app/app/

