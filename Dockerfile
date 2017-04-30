FROM tomcat:8-alpine
LABEL MAINTAINER "clement@le-corre.eu"
RUN rm -rf /usr/local/tomcat/webapps/*
ADD tomcat/api_dashboard.war /usr/local/tomcat/webapps/ROOT.war

