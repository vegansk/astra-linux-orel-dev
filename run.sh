#!/usr/bin/env bash

set -e

source $(dirname $0)/.env

CONTAINER_HOME=/home/dev

docker run -it \
  --rm \
  -v $(pwd):/home/dev/work \
  -v $HOME/.ssh:$CONTAINER_HOME/.ssh:ro \
  -v $HOME/.gitconfig:$CONTAINER_HOME/.gitconfig:ro \
  vegansk/astra-linux-orel-dev:$IMAGE_VERSION $@
