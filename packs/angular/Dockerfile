FROM node:10.16-alpine

LABEL name="Stakater Angular app" \    
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="An Angular application" 
# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new dir
WORKDIR /usr/src/app

# Copy dependency definitions
COPY dist/ /usr/src/app

RUN npm install

RUN npm install -g @angular/cli@8.0.2

RUN node dist/server

# Expose the port the app runs in
EXPOSE 4200