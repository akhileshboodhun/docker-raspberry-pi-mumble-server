#!/bin/bash

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push diyhackers2015/docker-raspberry-pi-mumble-server:$MUMBLE_SERVER_VERSION
docker tag diyhackers2015/docker-raspberry-pi-mumble-server:$MUMBLE_SERVER_VERSION diyhackers2015/docker-raspberry-pi-mumble-server:latest
docker push diyhackers2015/docker-raspberry-pi-mumble-server:latest
