#!/bin/bash

TAG=todo_app_prod

docker build -t "$TAG" -f 'deploy/prod.Dockerfile' .

docker run \
#   -e .env \
# Host port : Docker port
  -p 8080:3000 \ 
  -d "$TAG"
