FROM stakater/java-centos:1.8-centos7-v1.0.1

LABEL name="Stakater Java Maven app" \    
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="A maven application" 

USER 1001

WORKDIR $HOME/application

# Exposing 8080 port as we want application to run on port 8080
EXPOSE 8080

# NOTE we assume there's only 1 jar in the target dir
COPY application/target/*.jar $HOME/application/artifacts/app.jar

CMD ["java", "-jar", "artifacts/app.jar"]