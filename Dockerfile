############################################################
# GitLab CI Image to publish NPM packages
############################################################

# Image
# https://github.com/travis-ci/dpl#installation
FROM ruby:2.2

# Maintainer
MAINTAINER Paulo McNally <paulomcnally@gmail.com>

# Install curl and nodejs
RUN apt-get update && apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs
