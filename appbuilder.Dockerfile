FROM maven:3-jdk-8-alpine
MAINTAINER Clement le corre <clement@le-corre.eu>

COPY . /usr/src/dashboard
WORKDIR /usr/src/dashboard
ENTRYPOINT ["mvn"]
CMD ["package"]
