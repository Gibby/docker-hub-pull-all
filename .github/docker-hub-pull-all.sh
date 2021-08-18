#!/bin/bash

REPOS=$(curl -s "https://hub.docker.com/v2/repositories/$DOCKER_USERNAME/" | jq -r '.results | .[] | .name')

for REPO in $REPOS; do
  docker pull -a "$DOCKER_USERNAME"/"$REPO"
done
