FROM tomcat:v1
COPY context.xml /usr/local/tomcat/conf/context.xml 
RUN rm -rf /app/app/*
COPY SfzBackControl.war /app/app/
RUN chown dcos:docker /app -R

