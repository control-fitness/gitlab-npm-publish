# gitlab-npm-publish

Docker image to use on GitLab CI to publish an NPM package

# Clone

    $ https://github.com/control-fitness/gitlab-npm-publish.git

# Build

    $ sh ./build.sh

# Run

    $ sh ./start.sh

# Test

    $ sh ./test.sh

# Docker image

    $ docker images

```
REPOSITORY                          TAG                 IMAGE ID            CREATED             SIZE
controlfitness/gitlab-npm-publish   latest              6391ea32f941        11 minutes ago      799MB
```

# Publish

    $ docker login
    $ docker tag 6391ea32f941 controlfitness/gitlab-npm-publish:0.0.1
    $ docker push controlfitness/gitlab-npm-publish

# Docker Hub

* https://hub.docker.com/r/controlfitness/gitlab-npm-publish/

# .gitlab-ci.yml

```
image: controlfitness/gitlab-npm-publish:0.0.1

before_script:
  - ruby -v
  - node -v
  - npm -v

cache:
  paths:
    - node_modules/

test:
  stage: test
  script:
    - npm install
    - npm run test

production:
  stage: deploy
  script:
    - npm run dist
    - gem install dpl
    - dpl --provider=npm --email=$NPM_EMAIL --api-key=$NPM_API_KEY
  only:
    - tags

```
