FROM stakater/java-centos:1.8-centos7-v1.0.1

LABEL name="Stakater Java Maven app" \    
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="A maven application" 

USER 1001

WORKDIR $HOME/application

# Add code for application
ADD [--chown=$USER:root] application/target/ $HOME/application/artifacts/

# Exposing 8080 port as we want application to run on port 8080
EXPOSE 8080

# Change the group to root group
RUN chgrp -R 0 /$HOME && \
    chmod -R g=u /$HOME

CMD java -jar artifacts/<REPLACE_ME_ARTIFACT_ID_IN_POM>-<REPLACE_ME_VERSION_IN_POM>