# From tomcat 8
FROM stakater/tomcat:8

WORKDIR /tomcat
RUN rm -Rf webapps/*
ADD build/libs/*.war $HOME/artifacts/ROOT.war

EXPOSE 8080

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]