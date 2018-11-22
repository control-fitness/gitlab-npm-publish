#!/bin/sh

docker run -it controlfitness/gitlab-npm-publish echo "Ruby:" "$(ruby -v)"
docker run -it controlfitness/gitlab-npm-publish echo "NodeJS:" "$(node -v)"
docker run -it controlfitness/gitlab-npm-publish echo "NPM:" "$(npm -v)"
