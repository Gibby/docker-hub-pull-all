# docker-hub-pull-all

Simple script to pull all images for a specific docker hub user.


## Issue
* Docker Hub announced in https://www.docker.com/blog/scaling-dockers-business-to-serve-millions-more-developers-storage/
```"...a new inactive image retention policy was introduced that will automatically delete images hosted in free accounts that have not been used in 6 months."``` that was supposed start November 1, 2020.

  However they announced it was delayed in https://www.docker.com/blog/docker-hub-image-retention-policy-delayed-and-subscription-updates/


## Fix
* Fork this and in `.github/workflows/ci.yaml` update `DOCKER_USERNAME`
* Runs daily at 10:00 a.m.
