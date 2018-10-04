# Draft-Pack for Maven Applications

This is a sample draft-pack for java maven applications. It contains

- application: A folder that would contain your application source code. You can add your code here.

- manifests: A folder that contains the k8s vanilla manifests, its related deployment and service.

- chart: Helm chart to deploy the application.

- Dockerfile: A sample Dockerfile to build image from maven projects.

- Jenkinsfile: Sample Jenkinsfile that build the app and creates an image of the application.

## Changes when using this Draft Pack

Some values in the files would need to be changed with their actual values when using this draft. All such values start with `REPLACE_ME`.