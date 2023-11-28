FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:latest

#set locale
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8  

#set timezone
ENV TZ="America/New_York"
RUN date


ADD sample.war /opt/webserver/webapps/


EXPOSE 8080

ENV JAVA_OPTS="-Dspring.profiles.active=oshift"
