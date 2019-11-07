# use a node base image
FROM pegasystems/pega:8.3

# set maintainer
LABEL maintainer "wouter"

# copy
COPY server.xml /usr/local/tomcat/conf/
#COPY context.xml /opt/pega/config/context.xml
