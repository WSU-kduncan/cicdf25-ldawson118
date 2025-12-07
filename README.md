# Project Description
This document lays out two projects that are interconnected. The first is to set up Continuous Integration using Github actions. A workflow was set up that would, when a new tag is pushed to Github, build and push a container holding the content for a web server to Docker Hub. The second project handled Continuous Development using Webhook. Similarly to the CI portion, the webhook would listen for new tags being pushed to Github. When triggered, the webhook would pull the newest version of the container and deploy it to an AWS EC2 instance. This will keep the website live and up to date with the newest releases


[README-CI.md](README-CI.md)
In this file you will find the documentation for the CI portion of the project, involving: 
- How to set up a Docker container image with web content 
- Creating a Github Actions workflow
- Tagging and uploading commits and images using semantic versioning

[README-CD.md](README-CD.md)
In this file you will find the documentation for the CD portion of the project, involving:
- Setting up a proper AWS EC2 Instance
- Creating a bash script to pull and refresh a container application
- Configuring a webhook listener 
- Sending payloads to the webhook using Github