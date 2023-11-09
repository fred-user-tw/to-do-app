#!/bin/bash

TAG=todo_app

docker build -t "$TAG" -f 'deploy/local.Dockerfile' .

docker run \
#   -e .env \
# Host port : Docker port
  -p 8080:3000 \ 
  -d "$TAG"
