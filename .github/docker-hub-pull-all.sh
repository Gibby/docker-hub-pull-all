#!/bin/bash

REPOS=$(curl -s "https://hub.docker.com/v2/repositories/$DOCKER_USERNAME/?page_size=1000" | jq -r '.results | .[] | .name')

for REPO in $REPOS; do
  docker pull -a "$DOCKER_USERNAME"/"$REPO"
  docker rm $(docker ps -aq)
  docker rmi $(docker images -aq)
done
