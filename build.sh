#!/usr/bin/env bash

cd $(dirname $0)
docker build -t vegansk/astra-linux-orel-dev:0.1 .
