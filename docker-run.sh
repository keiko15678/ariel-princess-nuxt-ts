#!/bin/bash

DOCKER_IMAGE_NAME=nuxt-ts-docker-template
DOCKER_REMOTE_ADDR=keiko15678/ire:nuxt-ts-docker-template
DOCKER_DEV_FILE_PATH=Dockerfile.dev
DOCKER_PRD_FILE_PATH=Dockerfile

if [ "$1" = "local:dev" ]; then
  FILE_PATH=./docker-build-run.sh
  chmod +x $FILE_PATH
  $FILE_PATH $DOCKER_IMAGE_NAME $DOCKER_DEV_FILE_PATH
elif [ "$1" = "local:prd" ]; then
  FILE_PATH=./docker-build-run.sh
  chmod +x $FILE_PATH
  $FILE_PATH $DOCKER_IMAGE_NAME $DOCKER_PRD_FILE_PATH
elif [ "$1" = "hub:dev" ]; then
  FILE_PATH=./dockerhub-push.sh
  chmod +x $FILE_PATH
  $FILE_PATH $DOCKER_REMOTE_ADDR $DOCKER_DEV_FILE_PATH
elif [ "$1" = "hub:prd" ]; then
  FILE_PATH=./dockerhub-push.sh
  chmod +x $FILE_PATH
  $FILE_PATH $DOCKER_REMOTE_ADDR $DOCKER_PRD_FILE_PATH
fi
