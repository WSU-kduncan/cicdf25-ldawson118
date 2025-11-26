## Part 3: Semantic Versioning
### Generating tags
- How to see tags in a git repository
  - Use `git tag`
- How to generate a tag in a git repository
  - Make sure to `git add` and `git commit` first
  - Use `git tag -a v*.*.* -m "tag message"` (Replace `v*.*.*` with the proper tag)
- How to push a tag in a git repository to GitHub
  - `git push origin v*.*.*`
### Semantic Versioning Container Images with GitHub Actions
- Explanation of workflow trigger
  - The workflow triggers when a tag matching the v*.*.* format is pushed to the repo
- Explanation of workflow steps
  - Checkout the repository
  - Create tags for the Docker image
  - Login to Docker Hub using the secrets in the Github repo
  - Set up Docker Buildx which is for building images
  - Build the Docker image and push it to Docker Hub with the generated metadata tags
- Explanation / highlight of values that need updated if used in a different repository
  - Change `DOCKER_USERNAME` to the either the proper username used to login or a secret in your personal repo that holds your Docker username
  - Change `DOCKER_TOKEN` to either the token (not recommended for security), or a secret in your personal repo that holds the token.
  - Change `dawson118/panda-site:latest` to the proper `repo/image:tag` you are trying to pull
- Link to workflow file in your GitHub repository
  - [Workflow File](.github/workflows/project4-flow.yml)
### Testing & Validating
- How to test that your workflow did its tasking
  - After pushing a tag to the Github repo, go to the Actions tab
  - Here you can see which steps of the workflow completed properly
  - You can also check the Dockerhub repo to see all the tags properly uploaded
- How to verify that the image in DockerHub works when a container is run using the image
  - Pull the version you wish to test and run it with `docker run -p 8080:80 dawson118/panda-site:version`
- Link to your DockerHub repository with evidence of the tag set
  - [Dockerhub Repository](https://hub.docker.com/repository/docker/dawson118/panda-site/general)