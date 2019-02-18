# Draft-Pack for Maven Applications

This is a sample draft-pack for java maven applications. It contains

- manifests: A folder that contains the k8s vanilla manifests, its related deployment and service.

- chart: Helm chart to deploy the application.

- Dockerfile: A sample Dockerfile to build image from maven projects.

- Jenkinsfile: Sample Jenkinsfile that build the app and creates an image of the application.

- Application source code can be added to the main folder where the pom.xml is placed.


## Changes when using this Draft Pack

Some values in the files would need to be changed with their actual values when using this draft. All such values start with `REPLACE_ME`. The values are:

- REPLACE_ME_APP_NAME
- REPLACE_ME_IMAGE_SECRET
- REPLACE_ME_IMAGE_NAME
- REPLACE_ME_IMAGE_TAG
- REPLACE_ME_HEALTH_ENDPOINT
- REPLACE_ME_GIT_USER
- REPLACE_ME_GIT_MAIL
- REPLACE_ME_NAMESPACE_NAME