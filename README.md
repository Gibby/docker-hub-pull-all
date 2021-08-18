# docker-hub-pull-all

Simple script to pull all images for a specific docker hub user at 10:00 a.m. daily.

**NOTE:** This does authenticate so the pull limit is 200 per 6 hours. More info at https://www.docker.com/increase-rate-limits


## Issue
* Docker Hub announced in https://www.docker.com/blog/scaling-dockers-business-to-serve-millions-more-developers-storage/ ```...a new inactive image retention policy was introduced that will automatically delete images hosted in free accounts that have not been used in 6 months.``` that was supposed start November 1, 2020.

  However they announced it was delayed in https://www.docker.com/blog/docker-hub-image-retention-policy-delayed-and-subscription-updates/


## Fix
* Pull all your images once a day

## How to
1. Fork this
2. In your repository settings under <mark style="background-color: yellow">Secrets</mark>  add:

  `DOCKERHUB_TOKEN`

  `DOCKERHUB_USERNAME`

![](/images/repo_secret_settings.png)

## Todo
* When they start enforcing the policy, need to update [.github/docker-hub-pull-all.sh](.github/docker-hub-pull-all.sh) to sleep for 6 hours after 200 pulls.
