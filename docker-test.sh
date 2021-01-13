#!/bin/bash

docker ps
echo Docker is running...
./docker-build-local.sh test-build-nuxt-ts-docker-template Dockerfile.dev
echo Docker build succeed...
docker run -it -p 3000:3000 test-build-nuxt-ts-docker-template
