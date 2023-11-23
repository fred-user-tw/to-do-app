#!/bin/bash

TAG=todo_app

docker build -t "$TAG" -f 'deploy/prod.Dockerfile' .

docker run --name "$TAG" -p 8080:80 -d "$TAG"
#   -e .env \