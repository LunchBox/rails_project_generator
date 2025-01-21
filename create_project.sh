#!/bin/bash

DOCKER_IMAGE_NAME=rails_generator
RAILS_PROJECT_NAME=rails_app

docker build -t $DOCKER_IMAGE_NAME .

docker run --rm -it -v ${PWD}/:/app $DOCKER_IMAGE_NAME rails new $RAILS_PROJECT_NAME --minimal --api --database=postgresql

cp $RAILS_PROJECT_NAME/config/database.yml $RAILS_PROJECT_NAME/config/database.yml.sample
cp $RAILS_PROJECT_NAME/Dockerfile $RAILS_PROJECT_NAME/Dockerfile.prod

cp -r ./app_env/* $RAILS_PROJECT_NAME/