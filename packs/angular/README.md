# Draft-Pack for Angular Applications

This is a sample draft-pack for Angular applications. It contains

- manifests: A folder that contains the k8s vanilla manifests, its related deployment and service.

- chart: Helm chart to deploy the application.

- Dockerfile: A sample Dockerfile to build image from Angular projects.

- Jenkinsfile: Sample Jenkinsfile that build the app and creates an image of the application.

- Application source code can be added to the main folder where the Makefile is placed.


## Changes when using this Draft Pack

Copy the following files from this draft-pack
- Dockerfile
- Jenkinsfile
- Makefile
- deployments folder

Some values in the files would need to be changed with their actual values when using this draft. All such values start with `REPLACE_ME`. The values are:

- REPLACE_ME_APP_NAME  -> replace it with app name in lower case
- REPLACE_ME_IMAGE_SECRET  -> replace with "" if public image
- REPLACE_ME_IMAGE_NAME  -> replace it with your org/app name
- REPLACE_ME_IMAGE_TAG  -> replace it with your app tag
- REPLACE_ME_HEALTH_ENDPOINT  -> replace it with endpoint of your application or remove the probe section if you dont want liveness and readiness probes
- REPLACE_ME_GIT_USER  -> the git user's username needed to clone the repo in Jenkins pipeline
- REPLACE_ME_GIT_MAIL  -> the git user email needed to clone the repo in Jenkins pipeline
- REPLACE_ME_NAMESPACE_NAME  -> the namespace you want the app to be deployed
- REPLACE_ME_TOKEN_CREDENTIALS_ID -> Token Credentials ID for Git repo cloning
- DOCKER_REPOSITORY -> docker repository url to push docker images
- CHART_REPOSITORY_URL -> Helm chart repository URL to publish charts
