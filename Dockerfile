FROM tomcat:8-alpine
LABEL MAINTAINER "clement@le-corre.eu"

ARG DASHME_VERSION=1.0
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/api-dashboard-${DASHME_VERSION}-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

