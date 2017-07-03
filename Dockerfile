FROM maven:3-jdk-8-alpine as builder
LABEL MAINTAINER "clement@le-corre.eu"

COPY . /usr/src/dashboard
WORKDIR /usr/src/dashboard
ENTRYPOINT ["mvn"]
CMD ["compile","war:war"]

FROM tomcat:8-alpine
LABEL MAINTAINER "clement@le-corre.eu"

ARG DASHME_VERSION=1.0
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=builder /usr/src/dashboard/target/api-dashboard-${DASHME_VERSION}-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
