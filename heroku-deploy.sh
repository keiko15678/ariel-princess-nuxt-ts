#!/bin/bash

HEROKU_API_KEY=heroku-api-key
HEROKU_APP_NAME=heroku-app-name
HEROKU_APP_TYPE=web

DOCKER_REMOTE_ADDR=docker-remote-address
DOCKER_FILE_PATH=Dockerfile.heroku

$HEROKU_API_KEY heroku container:login

echo ⭐ Logged-in to Heroku...

heroku config:set --app=$HEROKU_APP_NAME HOST=0.0.0.0

./docker-build-push.sh $DOCKER_REMOTE_ADDR $DOCKER_FILE_PATH

echo ⭐ Image pushed to Dockerhub: $DOCKER_REMOTE_ADDR

docker tag $DOCKER_REMOTE_ADDR registry.heroku.com/$HEROKU_APP_NAME/$HEROKU_APP_TYPE
docker push registry.heroku.com/$HEROKU_APP_NAME/$HEROKU_APP_TYPE

echo ⭐ Image pushed to Heroku: $HEROKU_APP_NAME

DOCKER_IMAGE_ID=$(docker inspect registry.heroku.com/$HEROKU_APP_NAME/$HEROKU_APP_TYPE --format={{.Id}})

curl --netrc -X PATCH https://api.heroku.com/apps/$HEROKU_APP_NAME/formation \
  -d '{
  "updates": [
    {
      "type": "'$HEROKU_APP_TYPE'",
      "docker_image": "'$DOCKER_IMAGE_ID'"
    }
  ]
}' \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
  -o heroku-deploy-output.txt

echo 🤘 Deploy Heroku complete.
