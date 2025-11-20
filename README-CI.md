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
[Dockerfile](web-content/Dockerfile)

### How to build and push container
- Must be in the same directory as Dockerfile
- run `docker build -t dawson118/panda-site .`
- Log into Docker Hub on the command line
  - Go to Docker Hub in the browser and open settings
  - Click Personal Access Tokens
  - Fill in the information
  - Recommended "Read and Write" or "Read, Write, and Delete" privileges 
  - Generate token
  - Copy token (you only have one chance)
  - In the command line, run `docker login -u username`
  - Enter PAT when prompted
- run `docker push dawson118/panda-site`
- [Repository on Docker Hub](https://hub.docker.com/repositories/dawson118)

### How to run container
`docker run -p 8080:80 dawson118/panda-site`