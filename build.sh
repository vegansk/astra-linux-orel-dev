#!/usr/bin/env bash

set -e

cd $(dirname $0)
source .env
docker build -t vegansk/astra-linux-orel-dev:$IMAGE_VERSION .
