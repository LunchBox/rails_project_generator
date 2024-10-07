#!/bin/bash

DOCKER_IMAGE_NAME=rg
RAILS_PROJECT_NAME=rails_app

docker build -t $DOCKER_IMAGE_NAME .

docker run --rm -it -v ${PWD}/:/app $DOCKER_IMAGE_NAME rails new $RAILS_PROJECT_NAME --skip-bundle --minimal --api