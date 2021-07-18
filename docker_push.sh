#!/bin/bash

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push akhileshboodhun/docker-raspberry-pi-mumble-server:$MUMBLE_SERVER_VERSION
docker tag akhileshboodhun/docker-raspberry-pi-mumble-server:$MUMBLE_SERVER_VERSION akhileshboodhun/docker-raspberry-pi-mumble-server:latest
docker push akhileshboodhun/docker-raspberry-pi-mumble-server:latest
