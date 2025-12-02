#!/bin/bash

docker stop panda-site

docker rm panda-site

docker pull dawson118/panda-site:latest

docker run -d -p 80:80 --name panda-site dawson118/panda-site

echo "Container successfully running"