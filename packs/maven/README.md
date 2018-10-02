# Draft-Pack for Maven Applications

This is a sample draft-pack for java maven applications. It contains

- application: A folder that would contain your application source code. You can add your code here.

- manifests: A folder that contains the k8s vanilla manifests, its related deployment and service.

- chart: Helm chart to deploy the application.

- Dockerfile: A sample Dockerfile to build image from maven projects.

- Jenkinsfile: Sample Jenkinsfile that build the app and creates an image of the application.

Some values in the files would need to be changed when using this draft.

- manifests/deployment.yaml : change the app name, app version, image and container names
- manifests/service.yaml : change the service name