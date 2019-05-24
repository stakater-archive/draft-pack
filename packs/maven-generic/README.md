# Draft-Pack for Maven Applications using Generic App chart

This is a sample draft-pack for java maven applications that will be deployed using [Stakater generic app chart](https://github.com/stakater-charts/application). It contains

- deployment/values.yaml: Sample values file for [application chart](https://github.com/stakater-charts/application).

- Dockerfile: A sample Dockerfile to build image from maven projects.

- Jenkinsfile: Sample Jenkinsfile that build the app and creates an image of the application.

- Makefile: Contains make targets to deploy and delete via helm.

- Application source code can be added to the main folder where the pom.xml is placed.

## Changes when using this Draft Pack

Copy the following files from this draft-pack

- Dockerfile
- Jenkinsfile
- Makefile
- deployment folder

Some values in the files would need to be changed with their actual values when using this draft. All such values start with `{REPLACE_ME` and end with `}`. The values are:

- {REPLACE_ME_APP_NAME}  -> app name in lower case
- {REPLACE_ME_IMAGE_SECRET}  -> name of secret to access image, "" if public image
- {REPLACE_ME_IMAGE_NAME}  -> your docker-registry/org/app name
- {REPLACE_ME_IMAGE_TAG}  -> your app tag
- {REPLACE_ME_HEALTH_ENDPOINT}  -> endpoint of your application or remove the probe section if you dont want liveness and readiness probes
- {REPLACE_ME_APP_PORT} -> port on which your app is running
- {REPLACE_ME_GIT_USER}  -> git user's username needed to clone the repo in Jenkins pipeline
- {REPLACE_ME_GIT_EMAIL}  -> git user email needed to clone the repo in Jenkins pipeline
- {REPLACE_ME_NAMESPACE_NAME}  -> the namespace you want the app to be deployed
- {REPLACE_ME_JENKINS_GIT_TOKEN} -> id of jenkins credential that has the git token
- {REPLACE_ME_DOCKER_REPOSITORY_URL} -> url of your docker repository
- {REPLACE_ME_JAVA_REPOSITORY_URL} -> url of your Java repository