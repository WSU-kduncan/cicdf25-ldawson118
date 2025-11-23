## Part 1: Create a Docker Container Image
### Web Content
The website was generated using ChatGPT and is themed around Panda Bears.

The index.html file contains an image of a panda bear and a quick overview of what they are
[index.html](web-content/index.html)

The facts.html file contains a few fun facts about pandas
[facts.html](web-content/facts.html)

The styles.css file contains the code that determines the style of the page
[styles.css](web-content/styles.css)

### Dockerfile
The Dockerfile builds from the base image httpd:2.4 and copies the content for the panda site to the default location for httpd in apache2.
[Dockerfile](Dockerfile)

### How to build and push container
- Must be in the same directory as Dockerfile
- run `docker build -t dawson118/panda-site:latest .`
- following the image name, tag the image with :latest to define the newest version or a version number like :v1 or :1.2
- Log into Docker Hub on the command line
  - Go to Docker Hub in the browser and open settings
  - Click Personal Access Tokens
  - Fill in the information
  - Recommended "Read and Write" or "Read, Write, and Delete" privileges 
  - Generate token
  - Copy token (you only have one chance)
  - In the command line, run `docker login -u username`
  - Enter PAT when prompted
- run `docker push dawson118/panda-site:latest`
- [Repository on Docker Hub](https://hub.docker.com/repositories/dawson118)

### How to run container
`docker run -p 8080:80 dawson118/panda-site`

## Part 2: Github Actions and Dockerhub
### Configuring GitHub Repository Secrets:
- How to create a PAT for authentication
  - Go to Docker Hub and select your profile
  - Click Account Settings
  - On the left, click Personal Access Tokens
  - Click Generate Token
  - Enter a description, expiration date, and choose permissions (recommended read and write permissions for this project)
  - Click generate
  - Copy key somewhere secure
- How to set repository Secrets for use by GitHub Actions
  - Go to your Github repository
  - Click settings on the top bar
  - Select Secrets and Variables from the left, and choose Actions
  - Click New Repository Secret and enter a name and the secret
- Describe the Secrets set for this project
  - I have a secret named `DOCKER_USERNAME` that contains my username to log into Docker Hub
  - The other secret is named `DOCKER_TOKEN` and contains the PAT necessary to log into Docker Hub

### CI with GitHub Actions
- Explanation of workflow trigger
  - The workflow triggers on a push
- Explanation of workflow steps
  - Login to Docker Hub using the secrets in the Github repo
  - Set up Docker Buildx which is for building images
  - Build the Docker image and push it to Docker Hub
- Explanation / highlight of values that need updated if used in a different repository
  - Change `DOCKER_USERNAME` to the proper username used to login
  - Change `dawson118/panda-site:latest` to the proper image:tag
  - Change `main` to the branch that you wish to run the action on
- Link to workflow file in your GitHub repository
  - [Workflow File](.github/workflows/project4-flow.yml)

### Testing & Validating
- How to test that your workflow did its tasking
  - After pushing a commit to the Github repo, go to the Actions tab
  - Here you can see which steps of the workflow completed properly
- How to verify that the image in DockerHub works when a container is run using the image
  - Pull the image with `docker pull dawson118/panda-site:latest`
  - Run the image with `docker run -p 8080:80 dawson118/panda-site:latest`
- Link to your DockerHub repository
  - [DockerHub Repository](https://hub.docker.com/repositories/dawson118)